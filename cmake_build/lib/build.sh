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

#Usage: ./build.sh [Release|Debug]

rm ./build -rf 
mkdir ./build 
cd ./build

if (("$1"=="Release")); 
then
	echo "build with Release mode!"
else
	echo "build with Debug mode!"
fi

cmake -DCMAKE_BUILD_TYPE=$1 -DCMAKE_INSTALL_PREFIX=/usr ..  1>/dev/null || exit 1;

make 1>/dev/null || exit 1;
make install 1>/dev/null || exit 1;

cd ../

exit 0

