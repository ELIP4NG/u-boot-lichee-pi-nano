ARCH := "arm"
CROSS_COMPILE := "arm-linux-gnueabihf-"
PARALLELS := "-j16"

default:
	just --list

build:
        make {{PARALLELS}} ARCH={{ARCH}} CROSS_COMPILE={{CROSS_COMPILE}} 2>&1 | tee make.log

menuconfig:
        make menuconfig ARCH={{ARCH}} CROSS_COMPILE={{CROSS_COMPILE}}

clean:
        make clean ARCH={{ARCH}} CROSS_COMPILE={{CROSS_COMPILE}}

