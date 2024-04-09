set(CMAKE_CXX_COMPILER "/usr/bin/g++")
cmake_minimum_required(VERSION 3.29)
project(sentiment LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -fmodules-ts -std=c++20 -fmax-errors=10 -Wno-system-headers ")
set(CMAKE_CXX_SCAN_FOR_MODULES 0)

add_library(data mod.cpp)

add_executable(sentimenttest mod.cpp main.cpp)