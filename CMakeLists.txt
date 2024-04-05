cmake_minimum_required(VERSION 3.25)
project(sentiment LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(pybind11-2.11.1)
set(LUA_LIBRARIES "${PROJECT_SOURCE_DIR}/luabin/liblua53.so")
set(LUA_INCLUDE_DIR "${PROJECT_SOURCE_DIR}/luabin/include")

#find_package(Lua REQUIRED)

pybind11_add_module(sentimentpy MODULE main.cpp)


target_include_directories(sentimentpy PRIVATE ${LUA_INCLUDE_DIR})
target_link_libraries(sentimentpy PRIVATE ${LUA_LIBRARIES})
