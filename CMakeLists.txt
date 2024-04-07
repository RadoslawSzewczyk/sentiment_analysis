cmake_minimum_required(VERSION 3.16)
project(hello_cmake_boost_python)

# find the python include libraries on our system and our boost installation
find_package(Python3 REQUIRED COMPONENTS Development NumPy)
find_package(Boost REQUIRED COMPONENTS python3)


# create our "hello" shared library (.so) which will be imported from Python
add_library(hello SHARED main.cpp)

# make sure our library can find the python headers
target_include_directories(hello PRIVATE ${Python3_INCLUDE_DIRS})

# don't add "lib" in front, so that it can be imported from python
set_target_properties(hello PROPERTIES PREFIX "")
target_link_libraries(hello
    ${Boost_LIBRARIES}
    Python3::NumPy
    )

# add an install target to the build tool which can be called e.g. "make install"
install(TARGETS hello DESTINATION lib)