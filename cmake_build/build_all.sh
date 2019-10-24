#!/bin/bash

# ***************************************************************************
# * 
# * @file:build.sh 
# * @author:ebayboy@163.com 
# * @date:2019-10-24 11:08 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


#1. build libhello.so
cd ./lib && ./build.sh

#2. build test demo
cd ./test && ./build.sh

cd ../

exit 0

