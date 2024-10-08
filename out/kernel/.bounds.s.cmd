cmd_kernel/bounds.s := /root/clang-r383902/bin/clang -Wp,-MD,kernel/.bounds.s.d -nostdinc -isystem /root/clang-r383902/lib/clang/11.0.0/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I../drivers/misc/mediatek/include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h  -I../. -I. -D__KERNEL__ -Qunused-arguments -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_HANS_FREEZE -DOPLUS_FEATURE_AOD -DOPLUS_FEATURE_DC -DOPLUS_FEATURE_ENABLE_MODEM_DB -DOPLUS_FEATURE_ENGINEERTOOLS -DOPLUS_FEATURE_HEALTHINFO -DOPLUS_FEATURE_TASK_CPUSTATS -DOPLUS_FEATURE_FACERECOGNITION -DOPLUS_FEATURE_FASTBOOT_UNLOCK_VERIFY -DOPLUS_FEATURE_FG_IO_OPT -DOPLUS_FEATURE_SCHED_ASSIST -DOPLUS_FEATURE_SDCARD_INFO -DOPLUS_FEATURE_FINGERPRINT -DOPLUS_FEATURE_SPECIALOPT -DOPLUS_FEATURE_UFSPLUS -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_MIPICLKCHANGE -DOPLUS_FEATURE_MULTI_FREEAREA -DOPLUS_FEATURE_MULTI_KSWAPD -DOPLUS_FEATURE_NFC_CONSOFT -DOPLUS_FEATURE_ONSCREENFINGERPRINT -DOPLUS_FEATURE_OSC -DOPLUS_FEATURE_PHOENIX -DOPLUS_FEATURE_AGINGTEST -DOPLUS_FEATURE_PROCESS_RECLAIM -DOPLUS_FEATURE_RESET_ROLLBACK_INDEX -DOPLUS_FEATURE_SELINUX_CONTROL_LOG -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -DOPLUS_FEATURE_IOMONITOR -DOPLUS_FEATURE_SPEAKER_MUTE -DOPLUS_FEATURE_MM_FEEDBACK -DOPLUS_FEATURE_TP_BSPFWUPDATE -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY -DOPLUS_FEATURE_MEMLEAK_DETECT -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_RUSUPGRADE -DOPLUS_FEATURE_WIFI_SLA -DOPLUS_FEATURE_DATA_EVAL -DOPLUS_FEATURE_WIFI_SMART_BW -DOPLUS_FEATURE_IPV6_OPTIMIZE -DOPLUS_FEATURE_ZRAM_OPT -DOPLUS_FEATURE_EXFAT_SUPPORT -DOPLUS_FEATURE_SDCARDFS_SUPPORT -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_BUG_COMPATIBILITY -DOPLUS_FEATURE_MIDAS -DOPLUS_BUG_STABILITY -DOPLUS_BUG_DEBUG -DOPLUS_ARCH_INJECT -DOPLUS_ARCH_EXTENDS -DOPLUS_FEATURE_LOWMEM_DBG -DOPLUS_FEATURE_PERFORMANCE -DOPLUS_FEATURE_MTK_ION_SEPARATE_LOCK -DOPLUS_FEATURE_ALARMINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY_DEBUG -DOPLUS_FEATURE_POWERINFO_RPMH -DOPLUS_FEATURE_POWERINFO_FTM -DOPLUS_FEATURE_SCHEDUTIL_USE_TL -DOPLUS_FEATURE_CORE_CTL -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_CAMERA_COMMON -DOPLUS_FEATURE_WIFI_OPLUSWFD -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -w -std=gnu89 --target=aarch64-linux-gnu --prefix= --gcc-toolchain=/ -no-integrated-as -Werror=unknown-warning-option -fuse-ld=lld -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_HANS_FREEZE -DOPLUS_FEATURE_AOD -DOPLUS_FEATURE_DC -DOPLUS_FEATURE_ENABLE_MODEM_DB -DOPLUS_FEATURE_ENGINEERTOOLS -DOPLUS_FEATURE_HEALTHINFO -DOPLUS_FEATURE_TASK_CPUSTATS -DOPLUS_FEATURE_FACERECOGNITION -DOPLUS_FEATURE_FASTBOOT_UNLOCK_VERIFY -DOPLUS_FEATURE_FG_IO_OPT -DOPLUS_FEATURE_SCHED_ASSIST -DOPLUS_FEATURE_SDCARD_INFO -DOPLUS_FEATURE_FINGERPRINT -DOPLUS_FEATURE_SPECIALOPT -DOPLUS_FEATURE_UFSPLUS -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_MIPICLKCHANGE -DOPLUS_FEATURE_MULTI_FREEAREA -DOPLUS_FEATURE_MULTI_KSWAPD -DOPLUS_FEATURE_NFC_CONSOFT -DOPLUS_FEATURE_ONSCREENFINGERPRINT -DOPLUS_FEATURE_OSC -DOPLUS_FEATURE_PHOENIX -DOPLUS_FEATURE_AGINGTEST -DOPLUS_FEATURE_PROCESS_RECLAIM -DOPLUS_FEATURE_RESET_ROLLBACK_INDEX -DOPLUS_FEATURE_SELINUX_CONTROL_LOG -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -DOPLUS_FEATURE_IOMONITOR -DOPLUS_FEATURE_SPEAKER_MUTE -DOPLUS_FEATURE_MM_FEEDBACK -DOPLUS_FEATURE_TP_BSPFWUPDATE -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY -DOPLUS_FEATURE_MEMLEAK_DETECT -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_RUSUPGRADE -DOPLUS_FEATURE_WIFI_SLA -DOPLUS_FEATURE_DATA_EVAL -DOPLUS_FEATURE_WIFI_SMART_BW -DOPLUS_FEATURE_IPV6_OPTIMIZE -DOPLUS_FEATURE_ZRAM_OPT -DOPLUS_FEATURE_EXFAT_SUPPORT -DOPLUS_FEATURE_SDCARDFS_SUPPORT -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_BUG_COMPATIBILITY -DOPLUS_FEATURE_MIDAS -DOPLUS_BUG_STABILITY -DOPLUS_BUG_DEBUG -DOPLUS_ARCH_INJECT -DOPLUS_ARCH_EXTENDS -DOPLUS_FEATURE_LOWMEM_DBG -DOPLUS_FEATURE_PERFORMANCE -DOPLUS_FEATURE_MTK_ION_SEPARATE_LOCK -DOPLUS_FEATURE_ALARMINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY_DEBUG -DOPLUS_FEATURE_POWERINFO_RPMH -DOPLUS_FEATURE_POWERINFO_FTM -DOPLUS_FEATURE_SCHEDUTIL_USE_TL -DOPLUS_FEATURE_CORE_CTL -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_CAMERA_COMMON -DOPLUS_FEATURE_WIFI_OPLUSWFD -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -fno-PIE -mno-implicit-float -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -fno-pic -ffixed-x18 -Wno-asm-operand-widths -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -Wno-attribute-alias -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=3600 -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu -Wno-duplicate-decl-specifier -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -fsanitize=shadow-call-stack -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=../= -Wno-packed-not-aligned -Wno-initializer-overrides -Wno-unused-value -Wno-format -Wno-sign-compare -Wno-format-zero-length -Wno-uninitialized -Wno-pointer-to-enum-cast -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT   -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_HANS_FREEZE -DOPLUS_FEATURE_AOD -DOPLUS_FEATURE_DC -DOPLUS_FEATURE_ENABLE_MODEM_DB -DOPLUS_FEATURE_ENGINEERTOOLS -DOPLUS_FEATURE_HEALTHINFO -DOPLUS_FEATURE_TASK_CPUSTATS -DOPLUS_FEATURE_FACERECOGNITION -DOPLUS_FEATURE_FASTBOOT_UNLOCK_VERIFY -DOPLUS_FEATURE_FG_IO_OPT -DOPLUS_FEATURE_SCHED_ASSIST -DOPLUS_FEATURE_SDCARD_INFO -DOPLUS_FEATURE_FINGERPRINT -DOPLUS_FEATURE_SPECIALOPT -DOPLUS_FEATURE_UFSPLUS -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_MIPICLKCHANGE -DOPLUS_FEATURE_MULTI_FREEAREA -DOPLUS_FEATURE_MULTI_KSWAPD -DOPLUS_FEATURE_NFC_CONSOFT -DOPLUS_FEATURE_ONSCREENFINGERPRINT -DOPLUS_FEATURE_OSC -DOPLUS_FEATURE_PHOENIX -DOPLUS_FEATURE_AGINGTEST -DOPLUS_FEATURE_PROCESS_RECLAIM -DOPLUS_FEATURE_RESET_ROLLBACK_INDEX -DOPLUS_FEATURE_SELINUX_CONTROL_LOG -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -DOPLUS_FEATURE_IOMONITOR -DOPLUS_FEATURE_SPEAKER_MUTE -DOPLUS_FEATURE_MM_FEEDBACK -DOPLUS_FEATURE_TP_BSPFWUPDATE -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY -DOPLUS_FEATURE_MEMLEAK_DETECT -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_RUSUPGRADE -DOPLUS_FEATURE_WIFI_SLA -DOPLUS_FEATURE_DATA_EVAL -DOPLUS_FEATURE_WIFI_SMART_BW -DOPLUS_FEATURE_IPV6_OPTIMIZE -DOPLUS_FEATURE_ZRAM_OPT -DOPLUS_FEATURE_EXFAT_SUPPORT -DOPLUS_FEATURE_SDCARDFS_SUPPORT -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_BUG_COMPATIBILITY -DOPLUS_FEATURE_MIDAS -DOPLUS_BUG_STABILITY -DOPLUS_BUG_DEBUG -DOPLUS_ARCH_INJECT -DOPLUS_ARCH_EXTENDS -DOPLUS_FEATURE_LOWMEM_DBG -DOPLUS_FEATURE_PERFORMANCE -DOPLUS_FEATURE_MTK_ION_SEPARATE_LOCK -DOPLUS_FEATURE_ALARMINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY -DOPLUS_FEATURE_POWERINFO_STANDBY_DEBUG -DOPLUS_FEATURE_POWERINFO_RPMH -DOPLUS_FEATURE_POWERINFO_FTM -DOPLUS_FEATURE_SCHEDUTIL_USE_TL -DOPLUS_FEATURE_CORE_CTL -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_CAMERA_COMMON -DOPLUS_FEATURE_WIFI_OPLUSWFD -DKBUILD_BASENAME='"bounds"'  -DKBUILD_MODNAME='"bounds"'  -fverbose-asm -S -o kernel/bounds.s ../kernel/bounds.c

source_kernel/bounds.s := ../kernel/bounds.c

deps_kernel/bounds.s := \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/nr/cpus.h) \
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
  ../include/linux/page-flags.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/idle/page/tracking.h) \
    $(wildcard include/config/64bit.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/hugetlb/page.h) \
  ../include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
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
  ../include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  ../arch/arm64/include/asm/bug.h \
  ../include/linux/stringify.h \
  ../arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  ../arch/arm64/include/asm/brk-imm.h \
  ../include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  ../include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  ../arch/arm64/include/asm/barrier.h \
  ../include/asm-generic/barrier.h \
  ../include/linux/kasan-checks.h \
  ../include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
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
    $(wildcard include/config/cpu/big/endian.h) \
  ../include/uapi/linux/byteorder/little_endian.h \
  ../include/linux/swab.h \
  ../include/uapi/linux/swab.h \
  arch/arm64/include/generated/uapi/asm/swab.h \
  ../include/uapi/asm-generic/swab.h \
  ../include/linux/byteorder/generic.h \
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
  ../include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  ../include/uapi/linux/kernel.h \
  ../include/uapi/linux/sysinfo.h \
  ../arch/arm64/include/asm/cache.h \
    $(wildcard include/config/kasan/sw/tags.h) \
  ../arch/arm64/include/asm/cputype.h \
  ../arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/broken/gas/inst.h) \
    $(wildcard include/config/arm64/4k/pages.h) \
    $(wildcard include/config/arm64/16k/pages.h) \
    $(wildcard include/config/arm64/64k/pages.h) \
  ../arch/arm64/include/asm/compiler.h \
  ../include/linux/build_bug.h \
  ../include/linux/dynamic_debug.h \
    $(wildcard include/config/jump/label.h) \
  ../include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  ../include/linux/mmzone.h \
    $(wildcard include/config/oplus/multi/kswapd.h) \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/physical/anti/fragmentation.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/shadow/call/stack.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  ../include/linux/kbuild.h \
  ../include/linux/spinlock_types.h \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  ../arch/arm64/include/asm/spinlock_types.h \
  ../include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/lockdep/crossrelease.h) \
    $(wildcard include/config/trace/irqflags.h) \
  ../include/linux/rwlock_types.h \

kernel/bounds.s: $(deps_kernel/bounds.s)

$(deps_kernel/bounds.s):
