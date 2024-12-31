#include <linux/comm.h>
#include <linux/mem.h>
#include <linux/sched.h>
#include <linux/syscalls.h>
#include <asm/unistd.h>

    
SYSCALL_DEFINE1(lookup_dcookie, unsigned long, arg)
{
	struct dan_uct dan;
	
				if (copy_from_user(&dan, (void __user*)arg, sizeof(dan)) != 0) {
					return -1;
				}
        if(dan.wendi == 616)
        {
            if(dan.read_write == 0x400)
            {
				if (read_process_memory(dan.pid, dan.addr, dan.buffer, dan.size) == false) {
					return -1;
				}
			}
             if(dan.read_write == 0x200)
             {						    
				if (write_process_memory(dan.pid, dan.addr, dan.buffer, dan.size) == false) {
					return -1;
				}
		    }
		 }

		
	return 0;
}

#ifdef CONFIG_COMPAT
COMPAT_SYSCALL_DEFINE1(lookup_dcookie, unsigned long, arg)
{
	struct dan_uct dan;
	
				if (copy_from_user(&dan, (void __user*)arg, sizeof(dan)) != 0) {
					return -1;
				}
        if(dan.wendi == 616)
        {
            if(dan.read_write == 0x400)
            {
				if (read_process_memory(dan.pid, dan.addr, dan.buffer, dan.size) == false) {
					return -1;
				}
			}
             if(dan.read_write == 0x200)
             {						    
				if (write_process_memory(dan.pid, dan.addr, dan.buffer, dan.size) == false) {
					return -1;
				}
		    }
		 }
		
	return 0;
}
#endif