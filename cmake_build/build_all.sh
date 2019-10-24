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

rm ./main -rf

if [ "$1" = "Release" ]; then
	echo "Build with Release mode."
else
	echo "Build with Debug mode."
fi

#1. build libhello.so
echo "1. building libhello.so ..."
cd ./lib
./build.sh $1 1>/dev/null  || { echo "Error: build lib error, exit!"; exit 1; };
cd ../

#2. build test demo
echo "2. building test demo ..."
cd ./test 
./build.sh $1 1>/dev/null || { echo "Error: build demo error, exit!"; exit 1; };
cd ../

#3. cp demo
cp ./test/build/src/main  . -af

echo "build complete!"

exit 0

