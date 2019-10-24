#!/bin/bash

g++ -c hello.cpp

ar cr libhello.a hello.o

g++ -o main main.cpp -static -lhello -L.

./main
