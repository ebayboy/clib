cmake_minimum_required(VERSION 3.0.0)

set(CMAKE_CXX_FLAGS_DEBUG "-Wall -Werror -ggdb -O0")
set(CMAKE_CXX_FLAGS_RELEASE "-Wall -Werror -O2")

SET(LIBHELLO_SRC hello.cpp)

ADD_LIBRARY(hello SHARED ${LIBHELLO_SRC})
ADD_LIBRARY(hello_static STATIC ${LIBHELLO_SRC})

INSTALL(FILES hello.h DESTINATION include/hello)

INSTALL(TARGETS hello hello LIBRARY DESTINATION lib)
INSTALL(TARGETS hello_static hello_static LIBRARY ARCHIVE DESTINATION lib)
