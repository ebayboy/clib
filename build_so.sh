#!/bin/bash

# ***************************************************************************
# * 
# * @file:build_so.sh 
# * @author:ebayboy@163.com 
# * @date:2019-10-24 09:42 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

g++ -c -fPIC hello.cpp -o hello.o
g++ -shared hello.o -o libhello.so

g++ -o main_so main.cpp -lhello -L.

exit 0

