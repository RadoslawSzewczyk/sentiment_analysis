set(CMAKE_CXX_COMPILER "/usr/bin/gcc")
cmake_minimum_required(VERSION 3.25)
project(sentiment LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -fmodules-ts -std=c++20 -fmax-errors=10 -fpermissive -DPYBIND11_INSTALL=ON -DPYBIND11_TEST=OFF -DPYBIND11_PYTHON_VERSION=3.11")
set(CMAKE_CXX_SCAN_FOR_MODULES 0)
# -fmodules-ts gcc
add_library(data mod.cpp)
add_subdirectory(pybind11-2.11.1)

pybind11_add_module(sentimentpy MODULE mod.cpp main.cpp)

target_include_directories(sentimentpy PRIVATE /usr/include/python3.11)