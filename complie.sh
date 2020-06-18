#!/bin/bash
#编译前确保有automake等自动生成makefile的工具

cd protobuf-3.6.1
./autogen.sh

./configure --prefix=$PWD/../protobuf-pc --targe=arm-poky-linux
make clean
make -j4
make -j4 check
make -j4 install

./configure --prefix=$PWD/../protobuf-arm --host=arm-poky-linux  CXX=$PWD/../../cortexa9hf-vfp-neon-toolchain/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
make clean
make -j4
make -j4 check
make -j4 install
