#!/bin/bash

# 定义颜色变量
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
WHITE="\033[1;37m"
CYAN="\033[1;36m"
NC="\033[0m"


# 内核工作目录
KERNEL_DIR=$(pwd)
# 内核 defconfig 文件
# 编译临时目录，避免污染根目录
OUT=out

#环境配置



export PATH="/root/clang-r383902/bin:/root/gcc/aarch64/bin:/root/gcc/arm/bin:$PATH"
# arch平台
ARCH=arm64
SUBARCH=arm64

# 编译时线程指定，默认单线程，可以通过参数指定，比如8线程编译
TH_COUNT=8

# 编译参数
DEF_ARGS="O=${OUT} \
ARCH=${ARCH} \
CROSS_COMPILE=aarch64-linux-android- \
CLANG_TRIPLE=aarch64-linux-gnu- \
LTO=thin \
CROSS_COMPILE_ARM32=arm-linux-androideabi- \
LD=ld.lld"

BUILD_ARGS="-j${TH_COUNT} ${DEF_ARGS}"

# 编译函数
compile_kernel() {

    echo -e "${CYAN}=============== Make defconfig  ===============${NC}"
#    make CC="ccache clang" ${BUILD_ARGS} mtk6873_defconfig
    
    # 检查 make 命令是否执行成功
    if [[ $? -ne 0 ]]; then
        echo -e "${RED}>>> build kernel error, exiting!${NC}"
        exit 1
    fi
    
        echo -e "${CYAN}=============== Make Kernel  ===============${NC}"
    start_time=$(date +%s)
   make CC="ccache clang" ${BUILD_ARGS} 2>&1 | tee kernel.log
#  make CC="ccache clang" ${BUILD_ARGS} modules_prepare 2>&1 | tee kernel.log  
    # 检查 make 命令是否执行成功
    if [[ $? -ne 0 ]]; then
        echo -e "${RED}>>> build kernel error, exiting!${NC}"
        exit 1
    fi
    
    end_time=$(date +%s)
    total_time=$((end_time - start_time))
    echo -e "${GREEN}>>> build Kernel successful${NC}"
    echo -e "${GREEN}>>> build time: $(($total_time / 60)) minutes and $(($total_time % 60)) seconds${NC}"
}

# 主函数
main() {
    compile_kernel
}

# 调用主函数
main

exit 0
