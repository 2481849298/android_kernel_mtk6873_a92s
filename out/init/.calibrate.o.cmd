cmd_init/calibrate.o := /root/clang-r383902/bin/clang -Wp,-MD,init/.calibrate.o.d -nostdinc -isystem /root/clang-r383902/lib/clang/11.0.0/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I../drivers/misc/mediatek/include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h  -I../init -Iinit -D__KERNEL__ -Qunused-arguments -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_HANS_FREEZE -DOPLUS_FEATURE_AOD -DOPLUS_FEATURE_DC -DOPLUS_FEATURE_ENABLE_MODEM_DB -DOPLUS_FEATURE_ENGINEERTOOLS -DOPLUS_FEATURE_HEALTHINFO -DOPLUS_FEATURE_TASK_CPUSTATS -DOPLUS_FEATURE_FACERECOGNITION -DOPLUS_FEATURE_FASTBOOT_UNLOCK_VERIFY -DOPLUS_FEATURE_FG_IO_OPT -DOPLUS_FEATURE_SCHED_ASSIST -DOPLUS_FEATURE_SDCARD_INFO -DOPLUS_FEATURE_FINGERPRINT -DOPLUS_FEATURE_SPECIALOPT -DOPLUS_FEATURE_UFSPLUS -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_MIPICLKCHANGE -DOPLUS_FEATURE_MULTI_FREEAREA -DOPLUS_FEATURE_MULTI_KSWAPD -DOPLUS_FEATURE_NFC_CONSOFT -DOPLUS_FEATURE_ONSCREENFINGERPRINT -DOPLUS_FEATURE_OSC -DOPLUS_FEATURE_PHOENIX -DOPLUS_FEATURE_AGINGTEST -DOPLUS_FEATURE_PROCESS_RECLAIM -DOPLUS_FEATURE_RESET_ROLLBACK_INDEX -DOPLUS_FEATURE_SELINUX_CONTROL_LOG -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -DOPLUS_FEATURE_IOMONITOR -DOPLUS_FEATURE_SPEAKER_MUTE -DOPLUS_FEATURE_MM_FEEDBACK -DOPLUS_FEATURE_TP_BSPFWUPDATE -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY -DOPLUS_FEATURE_MEMLEAK_DETECT -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_RUSUPGRADE -DOPLUS_FEATURE_WIFI_SLA -DOPLUS_FEATURE_DATA_EVAL -DOPLUS_FEATURE_WIFI_SMART_BW -DOPLUS_FEATURE_IPV6_OPTIMIZE -DOPLUS_FEATURE_ZRAM_OPT -DOPLUS_FEATURE_EXFAT_SUPPORT -DOPLUS_FEATURE_SDCARDFS_SUPPORT -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_BUG_COMPATIBILITY -DOPLUS_FEATURE_MIDAS -DOPLUS_BUG_STABILITY -DOPLUS_BUG_DEBUG -DOPLUS_ARCH_INJECT -DOPLUS_ARCH_EXTENDS -DOPLUS_FEATURE_LOWMEM_DBG -DOPLUS_FEATURE_PERFORMANCE -DOPLUS_FEATURE_MTK_ION_SEPARATE_LOCK -DOPLUS_FEATURE_ALARMINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY_DEBUG -DOPLUS_FEATURE_POWERINFO_RPMH -DOPLUS_FEATURE_POWERINFO_FTM -DOPLUS_FEATURE_SCHEDUTIL_USE_TL -DOPLUS_FEATURE_CORE_CTL -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_CAMERA_COMMON -DOPLUS_FEATURE_WIFI_OPLUSWFD -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -w -std=gnu89 --target=aarch64-linux-gnu --prefix= --gcc-toolchain=/ -no-integrated-as -Werror=unknown-warning-option -fuse-ld=lld -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_HANS_FREEZE -DOPLUS_FEATURE_AOD -DOPLUS_FEATURE_DC -DOPLUS_FEATURE_ENABLE_MODEM_DB -DOPLUS_FEATURE_ENGINEERTOOLS -DOPLUS_FEATURE_HEALTHINFO -DOPLUS_FEATURE_TASK_CPUSTATS -DOPLUS_FEATURE_FACERECOGNITION -DOPLUS_FEATURE_FASTBOOT_UNLOCK_VERIFY -DOPLUS_FEATURE_FG_IO_OPT -DOPLUS_FEATURE_SCHED_ASSIST -DOPLUS_FEATURE_SDCARD_INFO -DOPLUS_FEATURE_FINGERPRINT -DOPLUS_FEATURE_SPECIALOPT -DOPLUS_FEATURE_UFSPLUS -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_MIPICLKCHANGE -DOPLUS_FEATURE_MULTI_FREEAREA -DOPLUS_FEATURE_MULTI_KSWAPD -DOPLUS_FEATURE_NFC_CONSOFT -DOPLUS_FEATURE_ONSCREENFINGERPRINT -DOPLUS_FEATURE_OSC -DOPLUS_FEATURE_PHOENIX -DOPLUS_FEATURE_AGINGTEST -DOPLUS_FEATURE_PROCESS_RECLAIM -DOPLUS_FEATURE_RESET_ROLLBACK_INDEX -DOPLUS_FEATURE_SELINUX_CONTROL_LOG -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -DOPLUS_FEATURE_IOMONITOR -DOPLUS_FEATURE_SPEAKER_MUTE -DOPLUS_FEATURE_MM_FEEDBACK -DOPLUS_FEATURE_TP_BSPFWUPDATE -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY -DOPLUS_FEATURE_MEMLEAK_DETECT -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_RUSUPGRADE -DOPLUS_FEATURE_WIFI_SLA -DOPLUS_FEATURE_DATA_EVAL -DOPLUS_FEATURE_WIFI_SMART_BW -DOPLUS_FEATURE_IPV6_OPTIMIZE -DOPLUS_FEATURE_ZRAM_OPT -DOPLUS_FEATURE_EXFAT_SUPPORT -DOPLUS_FEATURE_SDCARDFS_SUPPORT -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_BUG_COMPATIBILITY -DOPLUS_FEATURE_MIDAS -DOPLUS_BUG_STABILITY -DOPLUS_BUG_DEBUG -DOPLUS_ARCH_INJECT -DOPLUS_ARCH_EXTENDS -DOPLUS_FEATURE_LOWMEM_DBG -DOPLUS_FEATURE_PERFORMANCE -DOPLUS_FEATURE_MTK_ION_SEPARATE_LOCK -DOPLUS_FEATURE_ALARMINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY_DEBUG -DOPLUS_FEATURE_POWERINFO_RPMH -DOPLUS_FEATURE_POWERINFO_FTM -DOPLUS_FEATURE_SCHEDUTIL_USE_TL -DOPLUS_FEATURE_CORE_CTL -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_CAMERA_COMMON -DOPLUS_FEATURE_WIFI_OPLUSWFD -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -fno-PIE -mno-implicit-float -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -fno-pic -ffixed-x18 -Wno-asm-operand-widths -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -Wno-attribute-alias -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=3600 -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu -Wno-duplicate-decl-specifier -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -fsanitize=shadow-call-stack -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=../= -Wno-packed-not-aligned -Wno-initializer-overrides -Wno-unused-value -Wno-format -Wno-sign-compare -Wno-format-zero-length -Wno-uninitialized -Wno-pointer-to-enum-cast -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -fno-function-sections -fno-data-sections  -I../drivers/misc/mediatek/mtprof/  -I../drivers/misc/mediatek/include/   -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_HANS_FREEZE -DOPLUS_FEATURE_AOD -DOPLUS_FEATURE_DC -DOPLUS_FEATURE_ENABLE_MODEM_DB -DOPLUS_FEATURE_ENGINEERTOOLS -DOPLUS_FEATURE_HEALTHINFO -DOPLUS_FEATURE_TASK_CPUSTATS -DOPLUS_FEATURE_FACERECOGNITION -DOPLUS_FEATURE_FASTBOOT_UNLOCK_VERIFY -DOPLUS_FEATURE_FG_IO_OPT -DOPLUS_FEATURE_SCHED_ASSIST -DOPLUS_FEATURE_SDCARD_INFO -DOPLUS_FEATURE_FINGERPRINT -DOPLUS_FEATURE_SPECIALOPT -DOPLUS_FEATURE_UFSPLUS -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_MIPICLKCHANGE -DOPLUS_FEATURE_MULTI_FREEAREA -DOPLUS_FEATURE_MULTI_KSWAPD -DOPLUS_FEATURE_NFC_CONSOFT -DOPLUS_FEATURE_ONSCREENFINGERPRINT -DOPLUS_FEATURE_OSC -DOPLUS_FEATURE_PHOENIX -DOPLUS_FEATURE_AGINGTEST -DOPLUS_FEATURE_PROCESS_RECLAIM -DOPLUS_FEATURE_RESET_ROLLBACK_INDEX -DOPLUS_FEATURE_SELINUX_CONTROL_LOG -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -DOPLUS_FEATURE_IOMONITOR -DOPLUS_FEATURE_SPEAKER_MUTE -DOPLUS_FEATURE_MM_FEEDBACK -DOPLUS_FEATURE_TP_BSPFWUPDATE -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY -DOPLUS_FEATURE_MEMLEAK_DETECT -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_RUSUPGRADE -DOPLUS_FEATURE_WIFI_SLA -DOPLUS_FEATURE_DATA_EVAL -DOPLUS_FEATURE_WIFI_SMART_BW -DOPLUS_FEATURE_IPV6_OPTIMIZE -DOPLUS_FEATURE_ZRAM_OPT -DOPLUS_FEATURE_EXFAT_SUPPORT -DOPLUS_FEATURE_SDCARDFS_SUPPORT -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_BUG_COMPATIBILITY -DOPLUS_FEATURE_MIDAS -DOPLUS_BUG_STABILITY -DOPLUS_BUG_DEBUG -DOPLUS_ARCH_INJECT -DOPLUS_ARCH_EXTENDS -DOPLUS_FEATURE_LOWMEM_DBG -DOPLUS_FEATURE_PERFORMANCE -DOPLUS_FEATURE_MTK_ION_SEPARATE_LOCK -DOPLUS_FEATURE_ALARMINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY_DEBUG -DOPLUS_FEATURE_POWERINFO_RPMH -DOPLUS_FEATURE_POWERINFO_FTM -DOPLUS_FEATURE_SCHEDUTIL_USE_TL -DOPLUS_FEATURE_CORE_CTL -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_CAMERA_COMMON -DOPLUS_FEATURE_WIFI_OPLUSWFD -DKBUILD_BASENAME='"calibrate"'  -DKBUILD_MODNAME='"calibrate"' -c -o init/.tmp_calibrate.o ../init/calibrate.c

source_init/calibrate.o := ../init/calibrate.c

deps_init/calibrate.o := \
  ../include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  ../include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  ../include/linux/compiler-clang.h \
    $(wildcard include/config/lto/clang.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  ../include/linux/jiffies.h \
  ../include/linux/cache.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  ../include/uapi/linux/kernel.h \
  ../include/uapi/linux/sysinfo.h \
  ../include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  ../include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  ../include/uapi/asm-generic/types.h \
  ../include/asm-generic/int-ll64.h \
  ../include/uapi/asm-generic/int-ll64.h \
  ../arch/arm64/include/uapi/asm/bitsperlong.h \
  ../include/asm-generic/bitsperlong.h \
  ../include/uapi/asm-generic/bitsperlong.h \
  ../include/uapi/linux/posix_types.h \
  ../include/linux/stddef.h \
  ../include/uapi/linux/stddef.h \
  ../arch/arm64/include/uapi/asm/posix_types.h \
  ../include/uapi/asm-generic/posix_types.h \
  ../arch/arm64/include/asm/cache.h \
    $(wildcard include/config/kasan/sw/tags.h) \
  ../arch/arm64/include/asm/cputype.h \
  ../arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/broken/gas/inst.h) \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/arm64/4k/pages.h) \
    $(wildcard include/config/arm64/16k/pages.h) \
    $(wildcard include/config/arm64/64k/pages.h) \
  ../arch/arm64/include/asm/compiler.h \
  ../include/linux/stringify.h \
  ../include/linux/build_bug.h \
  ../include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  ../arch/arm64/include/asm/barrier.h \
  ../include/asm-generic/barrier.h \
  ../include/linux/kasan-checks.h \
  ../include/linux/bitops.h \
  ../include/linux/bits.h \
  ../arch/arm64/include/asm/bitops.h \
  ../include/asm-generic/bitops/builtin-__ffs.h \
  ../include/asm-generic/bitops/builtin-ffs.h \
  ../include/asm-generic/bitops/builtin-__fls.h \
  ../include/asm-generic/bitops/builtin-fls.h \
  ../include/asm-generic/bitops/ffz.h \
  ../include/asm-generic/bitops/fls64.h \
  ../include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  ../include/asm-generic/bitops/sched.h \
  ../include/asm-generic/bitops/hweight.h \
  ../include/asm-generic/bitops/arch_hweight.h \
  ../include/asm-generic/bitops/const_hweight.h \
  ../include/asm-generic/bitops/lock.h \
  ../include/asm-generic/bitops/non-atomic.h \
  ../include/asm-generic/bitops/le.h \
  ../arch/arm64/include/uapi/asm/byteorder.h \
  ../include/linux/byteorder/little_endian.h \
  ../include/uapi/linux/byteorder/little_endian.h \
  ../include/linux/swab.h \
  ../include/uapi/linux/swab.h \
  arch/arm64/include/generated/uapi/asm/swab.h \
  ../include/uapi/asm-generic/swab.h \
  ../include/linux/byteorder/generic.h \
  ../include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  arch/arm64/include/generated/asm/div64.h \
  ../include/asm-generic/div64.h \
  ../include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
  /root/clang-r383902/lib/clang/11.0.0/include/stdarg.h \
  ../include/linux/linkage.h \
  ../include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  ../arch/arm64/include/asm/linkage.h \
  ../include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  ../include/linux/typecheck.h \
  ../include/linux/printk.h \
    $(wildcard include/config/mtk/aee/feature.h) \
    $(wildcard include/config/mtk/eng/build.h) \
    $(wildcard include/config/printk/mt/prefix.h) \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  ../include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  ../include/linux/kern_levels.h \
  ../include/linux/dynamic_debug.h \
    $(wildcard include/config/jump/label.h) \
  ../include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  ../include/linux/seqlock.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  ../include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
  ../include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  ../include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  ../include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  ../include/uapi/linux/const.h \
  arch/arm64/include/generated/asm/preempt.h \
  ../include/asm-generic/preempt.h \
  ../include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
    $(wildcard include/config/cc/optimize/for/debugging.h) \
  ../include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  ../arch/arm64/include/asm/bug.h \
  ../arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  ../arch/arm64/include/asm/brk-imm.h \
  ../include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  ../include/linux/restart_block.h \
    $(wildcard include/config/compat.h) \
  ../arch/arm64/include/asm/current.h \
  ../arch/arm64/include/asm/thread_info.h \
    $(wildcard include/config/arm64/sw/ttbr0/pan.h) \
    $(wildcard include/config/shadow/call/stack.h) \
  ../arch/arm64/include/asm/memory.h \
    $(wildcard include/config/arm64/va/bits.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/debug/align/rodata.h) \
    $(wildcard include/config/blk/dev/initrd.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  ../arch/arm64/include/asm/page-def.h \
    $(wildcard include/config/arm64/page/shift.h) \
    $(wildcard include/config/arm64/cont/shift.h) \
  arch/arm64/include/generated/asm/sizes.h \
  ../include/asm-generic/sizes.h \
  ../include/linux/sizes.h \
  ../include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  ../include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
  ../include/linux/pfn.h \
  ../arch/arm64/include/asm/stack_pointer.h \
  ../include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  ../arch/arm64/include/asm/irqflags.h \
  ../arch/arm64/include/asm/ptrace.h \
  ../arch/arm64/include/uapi/asm/ptrace.h \
  ../arch/arm64/include/asm/hwcap.h \
  ../arch/arm64/include/uapi/asm/hwcap.h \
  ../include/asm-generic/ptrace.h \
  ../include/linux/bottom_half.h \
  ../include/linux/spinlock_types.h \
  ../arch/arm64/include/asm/spinlock_types.h \
  ../include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/lockdep/crossrelease.h) \
  ../include/linux/rwlock_types.h \
  ../arch/arm64/include/asm/spinlock.h \
  ../arch/arm64/include/asm/lse.h \
    $(wildcard include/config/as/lse.h) \
    $(wildcard include/config/arm64/lse/atomics.h) \
  ../arch/arm64/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/arm64/tagged/addr/abi.h) \
  ../include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  ../include/uapi/linux/string.h \
  ../arch/arm64/include/asm/string.h \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
  ../arch/arm64/include/asm/alternative.h \
    $(wildcard include/config/arm64/uao.h) \
    $(wildcard include/config/foo.h) \
  ../arch/arm64/include/asm/cpucaps.h \
  ../arch/arm64/include/asm/insn.h \
  ../arch/arm64/include/asm/cpufeature.h \
    $(wildcard include/config/arm64/ssbd.h) \
  ../include/linux/jump_label.h \
  ../include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  ../arch/arm64/include/asm/atomic.h \
  ../arch/arm64/include/asm/atomic_ll_sc.h \
  ../arch/arm64/include/asm/cmpxchg.h \
  ../include/asm-generic/atomic-long.h \
  ../arch/arm64/include/asm/fpsimd.h \
  ../arch/arm64/include/asm/hw_breakpoint.h \
  ../arch/arm64/include/asm/virt.h \
  ../arch/arm64/include/asm/sections.h \
  ../include/asm-generic/sections.h \
  ../arch/arm64/include/asm/pgtable-hwdef.h \
    $(wildcard include/config/pgtable/levels.h) \
  ../include/linux/rwlock.h \
  ../include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  ../include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  ../include/linux/time64.h \
  ../include/uapi/linux/time.h \
  ../include/linux/timex.h \
  ../include/uapi/linux/timex.h \
  ../include/uapi/linux/param.h \
  ../arch/arm64/include/uapi/asm/param.h \
  ../include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  ../include/uapi/asm-generic/param.h \
  ../arch/arm64/include/asm/timex.h \
  ../arch/arm64/include/asm/arch_timer.h \
    $(wildcard include/config/arm/arch/timer/ool/workaround.h) \
  ../include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  ../include/linux/errno.h \
  ../include/uapi/linux/errno.h \
  arch/arm64/include/generated/uapi/asm/errno.h \
  ../include/uapi/asm-generic/errno.h \
  ../include/uapi/asm-generic/errno-base.h \
  ../include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  ../include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  ../include/linux/bitmap.h \
  ../include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  ../arch/arm64/include/asm/smp.h \
    $(wildcard include/config/arm64/acpi/parking/protocol.h) \
  ../arch/arm64/include/asm/percpu.h \
  ../include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  ../include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
    $(wildcard include/config/mtk/rt/throttle/mon.h) \
    $(wildcard include/config/mtk/sched/monitor.h) \
  ../include/clocksource/arm_arch_timer.h \
    $(wildcard include/config/arm/arch/timer.h) \
  ../include/linux/timecounter.h \
  ../include/asm-generic/timex.h \
  include/generated/timeconst.h \
  ../include/linux/delay.h \
  arch/arm64/include/generated/asm/delay.h \
  ../include/asm-generic/delay.h \
  ../include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \

init/calibrate.o: $(deps_init/calibrate.o)

$(deps_init/calibrate.o):
