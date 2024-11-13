cmd_usr/built-in.o :=   rm -f usr/built-in.o; aarch64-linux-gnu-ar rcSTPD usr/built-in.o usr/initramfs_data.o ; scripts/mod/modpost usr/built-in.o
