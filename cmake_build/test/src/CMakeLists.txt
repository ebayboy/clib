cmake_minimum_required(VERSION 3.0.0)

set(CMAKE_CXX_FLAGS_DEBUG "-ggdb -O0 -L.")
set(CMAKE_CXX_FLAGS_RELEASE "-Wall -Werror -O2 -L.")
 
INCLUDE_DIRECTORIES(/usr/include/hello)

ADD_EXECUTABLE(main main.cpp)
ADD_EXECUTABLE(main_static main.cpp)

TARGET_LINK_LIBRARIES(main libhello.so)
TARGET_LINK_LIBRARIES(main_static libhello_static.a)

