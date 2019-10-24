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

if [ "$1" = "Release" ];then
        echo "build with Release mode!"
else
        echo "build with Debug mode!"
fi

rm -rf ./build && mkdir ./build && cd ./build

cmake -DCMAKE_BUILD_TYPE=$1 ..  1>/dev/null || exit 1;
make || exit 1;

cd ../

exit 0

