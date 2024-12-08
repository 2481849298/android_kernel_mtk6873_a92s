#include <linux/comm.h>
#include <linux/mem.h>
#include <linux/sched.h>
#include <linux/syscalls.h>
#include <asm/unistd.h>

SYSCALL_DEFINE2(lookup_dcookie, unsigned int, cmd, unsigned long, arg)
{
	struct dan_uct dan;

	switch (cmd) {
		case OP_READ_MEM:
			{
				if (copy_from_user(&dan, (void __user*)arg, sizeof(dan)) != 0) {
					return -EFAULT;
				}
				if (read_process_memory(dan.pid, dan.addr, dan.buffer, dan.size, dan.read_write) == false) {
					return -EFAULT;
				}
			}
			break;
		case OP_WRITE_MEM:
			{
				if (copy_from_user(&dan, (void __user*)arg, sizeof(dan)) != 0) {
					return -EFAULT;
				}
				if (write_process_memory(dan.pid, dan.addr, dan.buffer, dan.size, dan.read_write) == false) {
					return -EFAULT;
				}
			}
			break;
		default:
			break;
	}

	return 0;
}

#ifdef CONFIG_COMPAT
COMPAT_SYSCALL_DEFINE2(lookup_dcookie, unsigned int, cmd, unsigned long, arg)
{
	struct dan_uct dan;

	switch (cmd) {
		case OP_READ_MEM:
			{
				if (copy_from_user(&dan, (void __user*)arg, sizeof(dan)) != 0) {
					return -EFAULT;
				}
				if (read_process_memory(dan.pid, dan.addr, dan.buffer, dan.size, dan.read_write) == false) {
					return -EFAULT;
				}
			}
			break;
		case OP_WRITE_MEM:
			{
				if (copy_from_user(&dan, (void __user*)arg, sizeof(dan)) != 0) {
					return -EFAULT;
				}
				if (write_process_memory(dan.pid, dan.addr, dan.buffer, dan.size, dan.read_write) == false) {
					return -EFAULT;
				}
			}
			break;
		default:
			break;
	}

	return 0;
}
#endif