cmake_minimum_required(VERSION 3.25.1)

project(sentiment)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(pybind11-2.11.1)

pybind11_add_module(sentiment MODULE t.cpp)
