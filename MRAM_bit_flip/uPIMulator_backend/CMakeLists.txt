
cmake_minimum_required(VERSION 3.16)

#set(CMAKE_CXX_COMPILER "/opt/rh/devtoolset-8/root/usr/bin/g++")
#set(CMAKE_CXX_COMPILER "/usr/bin/g++-8")
set(CMAKE_CXX_COMPILER "/usr/bin/g++")

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "-O3")
#set(CMAKE_CXX_FLAGS  "-g")
#set(CMAKE_BUILD_TYPE Debug)

link_libraries(stdc++fs)

project(uPIMulator)

add_subdirectory(src)
