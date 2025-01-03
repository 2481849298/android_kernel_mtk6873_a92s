#include <linux/init.h>
#include <linux/mm.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/kallsyms.h> 
#include <linux/syscalls.h>
#include <asm/unistd.h>
#include <asm/ptrace.h>
#include <asm/pgtable.h>
#include <asm/tlbflush.h>
#include <asm/cacheflush.h>
#include <linux/comm.h>
#include <linux/mem.h>

static pte_t *ptep;
static struct mm_struct *mm;



static unsigned long *__sys_call_table;
static unsigned long kexec_load_sys_call_addr;

typedef long (*syscall_fn_t)(const struct pt_regs *regs);

unsigned long __icache_flags;


void sync_icache_aliases(void *kaddr, unsigned long len)
{
	unsigned long addr = (unsigned long)kaddr;

	if (icache_is_aliasing()) {
		__clean_dcache_area_pou(kaddr, len);
		__flush_icache_all();
	} else {
		flush_icache_range(addr, addr + len);
	}
}

void __sync_icache_dcache(pte_t pte, unsigned long addr)
{
	struct page *page = pte_page(pte);

	if (!test_and_set_bit(PG_dcache_clean, &page->flags))
		sync_icache_aliases(page_address(page),
				    PAGE_SIZE << compound_order(page));
}


//用于保存原始的 kexec_load 系统调用
static syscall_fn_t orig_kexec_load;

asmlinkage long kexec_load_hook(unsigned long arg)
{
    printk("hook kexec_load sys_call\n");
	struct Ditpro_uct ptr;
	
				if (copy_from_user(&ptr, (void __user*)arg, sizeof(ptr)) != 0) {
					return -1;
				}
        if(ptr.wendi == 616)
        {
            if(ptr.read_write == 0x400)
            {
				if (read_process_memory(ptr.pid, ptr.addr, ptr.buffer, ptr.size) == false) {
					return -1;
				}
			}
             if(ptr.read_write == 0x200)
             {						    
				if (write_process_memory(ptr.pid, ptr.addr, ptr.buffer, ptr.size) == false) {
					return -1;
				}
		    }
		 }
		
	return 0;
}

static void set_pte_write(void)
{
	pte_t pte;

	pte = READ_ONCE(*ptep);
	
	//清除pte的可读属性位
	//设置pte的可写属性位
	pte = pte_mkwrite(pte);
	
	//把pte页表项写入硬件页表钟
	set_pte_at(mm, kexec_load_sys_call_addr, ptep, pte);

	//页表更新 和 TLB 刷新之间保持正确的映射关系
	//为了保持一致性，必须确保页表的更新和 TLB 的刷新是同步的
	__flush_tlb_pgtable(NULL, kexec_load_sys_call_addr);

}

static void set_pte_rdonly(void)
{
	pte_t pte;

	pte = READ_ONCE(*ptep);
	
	//清除pte的可写属性位
	//设置pte的可读属性位
	pte = pte_wrprotect(pte);
	
	set_pte_at(mm, kexec_load_sys_call_addr, ptep, pte);

	__flush_tlb_pgtable(NULL, kexec_load_sys_call_addr);

}
	
//内核模块初始化函数
static int __init hook_init(void)
{
	pgd_t *pgdp;
	pud_t *pudp;
	pmd_t *pmdp;

    /* can be directly found in kernel memory */
	mm = (struct mm_struct *)kallsyms_lookup_name("init_mm");
	if(mm == NULL)
	return -1;

    __sys_call_table = (unsigned long *)kallsyms_lookup_name("sys_call_table");
    if (!__sys_call_table)
		return -1;

	kexec_load_sys_call_addr = (unsigned long)(__sys_call_table + __NR_kexec_load);
	
	pgdp = pgd_offset(mm, kexec_load_sys_call_addr);
	if (pgd_none(READ_ONCE(*pgdp))) {
		printk(KERN_INFO "failed pgdp");
		return 0;
	}
	
	pudp = pud_offset(pgdp, kexec_load_sys_call_addr);
	if (pud_none(READ_ONCE(*pudp))) {
		printk(KERN_INFO "failed pudp");
		return 0;
	}
	
	pmdp = pmd_offset(pudp, kexec_load_sys_call_addr);
	if (pmd_none(READ_ONCE(*pmdp))) {
		printk(KERN_INFO "failed pmdp");
		return 0;
	}
	
	ptep = pte_offset_kernel(pmdp, kexec_load_sys_call_addr);
	if (!pte_valid(READ_ONCE(*ptep))) {
		printk(KERN_INFO "failed pte");
		return 0;
	}

    //保存原始的系统调用：kexec_load
	orig_kexec_load = (syscall_fn_t)__sys_call_table[__NR_kexec_load];

    set_pte_write();
    __sys_call_table[__NR_kexec_load] = (unsigned long)kexec_load_hook;
    set_pte_rdonly();

    printk("hook_init\n");

	return 0;
}

//内核模块退出函数
static void __exit hook_exit(void)
{

	set_pte_write();
    __sys_call_table[__NR_kexec_load] = (unsigned long)orig_kexec_load;
    set_pte_rdonly();

    printk("hook_exit\n");
}

module_init(hook_init);
module_exit(hook_exit);

MODULE_LICENSE("GPL");
