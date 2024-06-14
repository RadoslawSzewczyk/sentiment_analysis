cmake_minimum_required(VERSION 3.25.1)
project(sentiment)
#make -j 10
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCES 
    src/wordMatch.cpp
    src/data.cpp
    src/classificators.cpp
    src/main.cpp)

set(HEADERS 
    header/classificator.h
    header/data.h
    header/wordMatch.h)

include_directories(${PROJECT_SOURCE_DIR}/header)

add_executable(sentiment ${SOURCES})