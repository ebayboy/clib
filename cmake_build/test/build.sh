#!/bin/bash

# ***************************************************************************
# * 
# * @file:build.sh 
# * @author:ebayboy@163.com 
# * @date:2019-10-24 10:41 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

rm -rf ./build && mkdir ./build && cd ./build

cmake .. && make

cd ../

exit 0
