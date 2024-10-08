cmd_arch/arm64/kernel/entry.o := /root/clang-r383902/bin/clang -Wp,-MD,arch/arm64/kernel/.entry.o.d -nostdinc -isystem /root/clang-r383902/lib/clang/11.0.0/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I../drivers/misc/mediatek/include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -D__KERNEL__ -Qunused-arguments -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_HANS_FREEZE -DOPLUS_FEATURE_AOD -DOPLUS_FEATURE_DC -DOPLUS_FEATURE_ENABLE_MODEM_DB -DOPLUS_FEATURE_ENGINEERTOOLS -DOPLUS_FEATURE_HEALTHINFO -DOPLUS_FEATURE_TASK_CPUSTATS -DOPLUS_FEATURE_FACERECOGNITION -DOPLUS_FEATURE_FASTBOOT_UNLOCK_VERIFY -DOPLUS_FEATURE_FG_IO_OPT -DOPLUS_FEATURE_SCHED_ASSIST -DOPLUS_FEATURE_SDCARD_INFO -DOPLUS_FEATURE_FINGERPRINT -DOPLUS_FEATURE_SPECIALOPT -DOPLUS_FEATURE_UFSPLUS -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_MIPICLKCHANGE -DOPLUS_FEATURE_MULTI_FREEAREA -DOPLUS_FEATURE_MULTI_KSWAPD -DOPLUS_FEATURE_NFC_CONSOFT -DOPLUS_FEATURE_ONSCREENFINGERPRINT -DOPLUS_FEATURE_OSC -DOPLUS_FEATURE_PHOENIX -DOPLUS_FEATURE_AGINGTEST -DOPLUS_FEATURE_PROCESS_RECLAIM -DOPLUS_FEATURE_RESET_ROLLBACK_INDEX -DOPLUS_FEATURE_SELINUX_CONTROL_LOG -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -DOPLUS_FEATURE_IOMONITOR -DOPLUS_FEATURE_SPEAKER_MUTE -DOPLUS_FEATURE_MM_FEEDBACK -DOPLUS_FEATURE_TP_BSPFWUPDATE -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY -DOPLUS_FEATURE_MEMLEAK_DETECT -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_RUSUPGRADE -DOPLUS_FEATURE_WIFI_SLA -DOPLUS_FEATURE_DATA_EVAL -DOPLUS_FEATURE_WIFI_SMART_BW -DOPLUS_FEATURE_IPV6_OPTIMIZE -DOPLUS_FEATURE_ZRAM_OPT -DOPLUS_FEATURE_EXFAT_SUPPORT -DOPLUS_FEATURE_SDCARDFS_SUPPORT -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_BUG_COMPATIBILITY -DOPLUS_FEATURE_MIDAS -DOPLUS_BUG_STABILITY -DOPLUS_BUG_DEBUG -DOPLUS_ARCH_INJECT -DOPLUS_ARCH_EXTENDS -DOPLUS_FEATURE_LOWMEM_DBG -DOPLUS_FEATURE_PERFORMANCE -DOPLUS_FEATURE_MTK_ION_SEPARATE_LOCK -DOPLUS_FEATURE_ALARMINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY_DEBUG -DOPLUS_FEATURE_POWERINFO_RPMH -DOPLUS_FEATURE_POWERINFO_FTM -DOPLUS_FEATURE_SCHEDUTIL_USE_TL -DOPLUS_FEATURE_CORE_CTL -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_CAMERA_COMMON -DOPLUS_FEATURE_WIFI_OPLUSWFD -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -D__ASSEMBLY__ --target=aarch64-linux-gnu --prefix= --gcc-toolchain=/ -no-integrated-as -Werror=unknown-warning-option -fno-PIE -DCONFIG_AS_LSE=1 -DKASAN_SHADOW_SCALE_SHIFT=3 -DCC_HAVE_ASM_GOTO -Wa,-gdwarf-2   -c -o arch/arm64/kernel/entry.o ../arch/arm64/kernel/entry.S

source_arch/arm64/kernel/entry.o := ../arch/arm64/kernel/entry.S

deps_arch/arm64/kernel/entry.o := \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/unmap/kernel/at/el0.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/arm64/ssbd.h) \
    $(wildcard include/config/shadow/call/stack.h) \
    $(wildcard include/config/arm64/sw/ttbr0/pan.h) \
    $(wildcard include/config/arm64/erratum/845719.h) \
    $(wildcard include/config/pid/in/contextidr.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/mtk/aee/ipanic.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/harden/branch/predictor.h) \
    $(wildcard include/config/oplus/root/check.h) \
    $(wildcard include/config/qcom/falkor/erratum/1003.h) \
    $(wildcard include/config/randomize/base.h) \
  ../include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  ../include/linux/arm-smccc.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/arm.h) \
  ../include/uapi/linux/const.h \
  ../include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
    $(wildcard include/config/lto/clang.h) \
  ../include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
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
  ../include/linux/linkage.h \
  ../include/linux/stringify.h \
  ../include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  ../arch/arm64/include/asm/linkage.h \
  ../arch/arm64/include/asm/alternative.h \
    $(wildcard include/config/arm64/uao.h) \
    $(wildcard include/config/foo.h) \
  ../arch/arm64/include/asm/cpucaps.h \
  ../arch/arm64/include/asm/insn.h \
  ../arch/arm64/include/asm/assembler.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/arm64/va/bits/48.h) \
    $(wildcard include/config/kprobes.h) \
    $(wildcard include/config/qcom/falkor/erratum/e1041.h) \
  ../include/asm-generic/export.h \
  ../arch/arm64/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \
  ../arch/arm64/include/asm/cpufeature.h \
  ../arch/arm64/include/asm/cputype.h \
  ../arch/arm64/include/asm/hwcap.h \
  ../arch/arm64/include/uapi/asm/hwcap.h \
  ../arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/broken/gas/inst.h) \
    $(wildcard include/config/arm64/4k/pages.h) \
    $(wildcard include/config/arm64/16k/pages.h) \
    $(wildcard include/config/arm64/64k/pages.h) \
  ../arch/arm64/include/asm/compiler.h \
  ../arch/arm64/include/asm/page.h \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  ../arch/arm64/include/asm/page-def.h \
    $(wildcard include/config/arm64/page/shift.h) \
    $(wildcard include/config/arm64/cont/shift.h) \
  ../include/asm-generic/getorder.h \
  ../arch/arm64/include/asm/pgtable-hwdef.h \
    $(wildcard include/config/pgtable/levels.h) \
  ../arch/arm64/include/asm/ptrace.h \
  ../arch/arm64/include/uapi/asm/ptrace.h \
  ../arch/arm64/include/asm/thread_info.h \
  arch/arm64/include/generated/uapi/asm/errno.h \
  ../include/uapi/asm-generic/errno.h \
  ../include/uapi/asm-generic/errno-base.h \
  ../arch/arm64/include/asm/esr.h \
  ../arch/arm64/include/asm/memory.h \
    $(wildcard include/config/arm64/va/bits.h) \
    $(wildcard include/config/debug/align/rodata.h) \
    $(wildcard include/config/blk/dev/initrd.h) \
    $(wildcard include/config/kasan/sw/tags.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  ../arch/arm64/include/asm/bug.h \
  ../arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/generic/bug.h) \
  ../arch/arm64/include/asm/brk-imm.h \
  ../include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
    $(wildcard include/config/smp.h) \
  arch/arm64/include/generated/asm/sizes.h \
  ../include/asm-generic/sizes.h \
  ../include/linux/sizes.h \
  ../include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
  ../include/linux/pfn.h \
  ../arch/arm64/include/asm/irq.h \
  ../arch/arm64/include/asm/mmu.h \
  ../arch/arm64/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/arm64/tagged/addr/abi.h) \
  ../arch/arm64/include/asm/asm-uaccess.h \
  ../arch/arm64/include/asm/kernel-pgtable.h \
  ../arch/arm64/include/asm/pgtable.h \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/transparent/hugepage.h) \
  ../arch/arm64/include/asm/proc-fns.h \
  ../arch/arm64/include/asm/pgtable-prot.h \
  ../arch/arm64/include/asm/sparsemem.h \
  ../arch/arm64/include/asm/unistd.h \
  ../arch/arm64/include/uapi/asm/unistd.h \
  ../include/asm-generic/unistd.h \
  ../include/uapi/asm-generic/unistd.h \
    $(wildcard include/config/mmu.h) \

arch/arm64/kernel/entry.o: $(deps_arch/arm64/kernel/entry.o)

$(deps_arch/arm64/kernel/entry.o):
