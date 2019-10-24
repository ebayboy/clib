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

if [ $#!=2 ]; then
	echo "Usage: ./build.sh [Release|Debug]"
fi

rm -rf ./build && mkdir ./build && cd ./build

cmake -DCMAKE_BUILD_TYPE=$1 ..  || exit 1;
make || exit 1;

cd ../

exit 0

