cmake_minimum_required(VERSION 3.25.1)
project(sentiment)

# Set the C++ standard to C++20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add the path to the local pybind11 folder
add_subdirectory(src/pybind11)

# Source and header files
set(SOURCES 
    src/wordMatch.cpp
    src/data.cpp
    src/classificators.cpp
    src/main.cpp
    src/bindings.cpp)  # Ensure bindings.cpp is included in SOURCES

set(HEADERS 
    header/classificator.h
    header/data.h
    header/wordMatch.h)

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/header)

# Add the pybind11 module
pybind11_add_module(classificator_module ${SOURCES})

# Ensure proper linking
target_include_directories(classificator_module PRIVATE ${PROJECT_SOURCE_DIR}/header)
