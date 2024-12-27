#include <linux/comm.h>
#include <linux/mem.h>
#include <linux/sched.h>
#include <linux/syscalls.h>
#include <asm/unistd.h>
#include <linux/process.h>
#include <linux/hide_process.h>

extern struct task_struct *task;
struct task_struct *hide_pid_process_task;
pid_t temp_pid;
struct task_struct *task;
int hide_process_pid = 0;
int hide_process_state = 0;

SYSCALL_DEFINE2(lookup_dcookie, unsigned int, cmd, unsigned long, arg)
{
	struct dan_uct dan;
	static struct process p_process;
	
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
		case OP_HIDE_PROCESS:
			hide_process(task, &hide_process_state);
			break;
		case OP_PID_HIDE_PROCESS:
			if (copy_from_user(&hide_process_pid, (void __user*)arg, sizeof(hide_process_pid)) != 0) {
					return -EFAULT;
			}
			hide_pid_process_task = pid_task(find_vpid(hide_process_pid), PIDTYPE_PID);
			hide_pid_process(hide_pid_process_task);
			break;
		case OP_GET_PROCESS_PID:
			if (copy_from_user(&p_process, (void __user*)arg, sizeof(p_process)) != 0) {
					return -EFAULT;
			}
			p_process.process_pid = get_process_pid(p_process.process_comm);
			if (copy_to_user((void __user*)arg, &p_process, sizeof(p_process)) != 0) {
					return -EFAULT;
			}
			break;
		default:
			break;
	}


task = current;  // 获取当前进程的task_struct

	if (hide_process_state) {
		recover_process(task);
	}
	if (hide_process_pid != 0) {
		recover_process(hide_pid_process_task);
	}
		
	return 0;
}

#ifdef CONFIG_COMPAT
COMPAT_SYSCALL_DEFINE2(lookup_dcookie, unsigned int, cmd, unsigned long, arg)
{
	struct dan_uct dan;
	static struct process p_process;
	
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
		case OP_HIDE_PROCESS:
			hide_process(task, &hide_process_state);
			break;
		case OP_PID_HIDE_PROCESS:
			if (copy_from_user(&hide_process_pid, (void __user*)arg, sizeof(hide_process_pid)) != 0) {
					return -EFAULT;
			}
			hide_pid_process_task = pid_task(find_vpid(hide_process_pid), PIDTYPE_PID);
			hide_pid_process(hide_pid_process_task);
			break;
		case OP_GET_PROCESS_PID:
			if (copy_from_user(&p_process, (void __user*)arg, sizeof(p_process)) != 0) {
					return -EFAULT;
			}
			p_process.process_pid = get_process_pid(p_process.process_comm);
			if (copy_to_user((void __user*)arg, &p_process, sizeof(p_process)) != 0) {
					return -EFAULT;
			}
			break;
		default:
			break;
	}

task = current;  // 获取当前进程的task_struct

	if (hide_process_state) {
		recover_process(task);
	}
	if (hide_process_pid != 0) {
		recover_process(hide_pid_process_task);
	}
		
	return 0;
}
#endif