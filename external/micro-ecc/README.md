# compile micro_ecc_lib_nrf51.lib

1. 请执行如下指令下载子工程代码

	git clone https://github.com/kmackay/micro-ecc.git
2. 编译环境搭建 \
	a. 安装mingw https://sourceforge.net/projects/mingw/ \
		修改mingw_make.exe 为 make.exe 
		
	b. 安装 GNU Arm Embedded Toolchain 注意版本，根据 makefile 中实用的版本，https://launchpad.net/gcc-arm-embedded/+series  
		
		TEMPLATE_PATH := $(SDK_ROOT)/components/toolchain/gcc
		include $(TEMPLATE_PATH)/Makefile.common
		
		// 在如下目录中的 Makefile.windowns
		//components\toolchain\gcc
		GNU_INSTALL_ROOT := C:/Program Files (x86)/GNU Tools ARM Embedded/4.9 2015q3
		GNU_VERSION := 4.9.3
		GNU_PREFIX := arm-none-eabi
3. 执行make 编译 

	切换到 external/micro-ecc/nrf51_keil/armgcc 目录，执行 make
