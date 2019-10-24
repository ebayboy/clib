#!/bin/bash

# ***************************************************************************
# * 
# * @file:build.sh 
# * @author:ebayboy@163.com 
# * @date:2019-10-24 10:40 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

rm ./build -rf && mkdir ./build && cd ./build

cmake -DCMAKE_INSTALL_PREFIX=/usr ..
make
make install

cd ../

exit 0

