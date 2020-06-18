#!/bin/bash

HEADER_INSTALL_DIR=../src/SOUP/protobuf
PC_LIB_INSTALL_DIR=../src/iDM/libamd64
ARM_LIB_INSTALL_DIR=../src/iDM/lib
EXEC_INSTALL_DIR=../cortexa9hf-vfp-neon-toolchain/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/

rm -r $HEADER_INSTALL_DIR
mkdir -p $HEADER_INSTALL_DIR 

cp -r ./protobuf-arm/include $HEADER_INSTALL_DIR
cp -r ./protobuf-arm/lib/*  $ARM_LIB_INSTALL_DIR
cp -r ./protobuf-pc/lib/* $PC_LIB_INSTALL_DIR
cp -r ./protobuf-pc/bin/arm-poky-linux-protoc $EXEC_INSTALL_DIR

