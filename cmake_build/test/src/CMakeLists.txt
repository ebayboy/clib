cmake_minimum_required(VERSION 3.0.0)

ADD_EXECUTABLE(main main.cpp)
INCLUDE_DIRECTORIES(/usr/include/hello)
TARGET_LINK_LIBRARIES(main libhello.so)
