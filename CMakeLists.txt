cmake_minimum_required(VERSION 3.25)
project(sentiment LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU" OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_compile_options(-fmodules-ts)
endif()

add_subdirectory(pybind11-2.11.1)

find_package(Lua REQUIRED)

set(MODULE_OUTPUT_DIR "${CMAKE_CURRENT_BINARY_DIR}")

set(MODULE_OUTPUT_FILE "${MODULE_OUTPUT_DIR}/data.gcm")

add_custom_command(
    OUTPUT ${MODULE_OUTPUT_FILE}
    COMMAND ${CMAKE_CXX_COMPILER} -fmodules-ts -x c++ -std=c++20 -c /home/radek/repos/sentiment_analysis/data.cpp -o ${MODULE_OUTPUT_FILE}
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
    DEPENDS ${MODULE_INTERFACE_FILE}
    COMMENT "Precompiling module interface: ${MODULE_INTERFACE_FILE}"
)

add_custom_target(precompile_module_interface ALL DEPENDS ${MODULE_OUTPUT_FILE})

pybind11_add_module(sentimentpy MODULE main.cpp)


target_include_directories(sentimentpy PRIVATE ${LUA_INCLUDE_DIR})
target_link_libraries(sentimentpy PRIVATE ${LUA_LIBRARIES})
