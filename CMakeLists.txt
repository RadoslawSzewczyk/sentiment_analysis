cmake_minimum_required(VERSION 3.29.1)
project(sentiment)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCES 
    src/main.cpp)

set(HEADERS 
    header/classificator.h
    header/data.h
    header/wordMatch.h)

include_directories(${PROJECT_SOURCE_DIR}/header)

add_executable(sentiment ${SOURCES})