cmd_/home/andy/mindspeed/3.1/sdk-comcerto-openwrt-c2k_nas_3.1-rc2/build_dir/toolchain-arm_v7-a_gcc-4.5-linaro_glibc-2.14.1_eabi/linux-dev//include/xen/.install := perl scripts/headers_install.pl /home/andy/mindspeed/3.1/sdk-comcerto-openwrt-c2k_nas_3.1-rc2/build_dir/toolchain-arm_v7-a_gcc-4.5-linaro_glibc-2.14.1_eabi/linux-3.2.26/include/xen /home/andy/mindspeed/3.1/sdk-comcerto-openwrt-c2k_nas_3.1-rc2/build_dir/toolchain-arm_v7-a_gcc-4.5-linaro_glibc-2.14.1_eabi/linux-dev//include/xen arm evtchn.h privcmd.h; perl scripts/headers_install.pl /home/andy/mindspeed/3.1/sdk-comcerto-openwrt-c2k_nas_3.1-rc2/build_dir/toolchain-arm_v7-a_gcc-4.5-linaro_glibc-2.14.1_eabi/linux-3.2.26/include/xen /home/andy/mindspeed/3.1/sdk-comcerto-openwrt-c2k_nas_3.1-rc2/build_dir/toolchain-arm_v7-a_gcc-4.5-linaro_glibc-2.14.1_eabi/linux-dev//include/xen arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/andy/mindspeed/3.1/sdk-comcerto-openwrt-c2k_nas_3.1-rc2/build_dir/toolchain-arm_v7-a_gcc-4.5-linaro_glibc-2.14.1_eabi/linux-dev//include/xen/$$F; done; touch /home/andy/mindspeed/3.1/sdk-comcerto-openwrt-c2k_nas_3.1-rc2/build_dir/toolchain-arm_v7-a_gcc-4.5-linaro_glibc-2.14.1_eabi/linux-dev//include/xen/.install