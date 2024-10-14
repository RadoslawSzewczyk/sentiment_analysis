cmake_minimum_required(VERSION 3.16.3)
project(sentiment)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(src/pybind11)

set(SOURCES 
    src/wordMatch.cpp
    src/data.cpp
    src/classificators.cpp
    src/main.cpp
    src/bindings.cpp)

set(HEADERS 
    header/classificator.h
    header/data.h
    header/wordMatch.h)

include_directories(${PROJECT_SOURCE_DIR}/header)

pybind11_add_module(classificator_module ${SOURCES})

target_include_directories(classificator_module PRIVATE ${PROJECT_SOURCE_DIR}/header)
