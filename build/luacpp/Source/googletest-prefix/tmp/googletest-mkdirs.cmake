# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/radek/repos/sentiment_analysis/build/luacpp/Source/googletest-src"
  "/home/radek/repos/sentiment_analysis/build/luacpp/Source/googletest-build"
  "/home/radek/repos/sentiment_analysis/build/luacpp/Source/googletest-prefix"
  "/home/radek/repos/sentiment_analysis/build/luacpp/Source/googletest-prefix/tmp"
  "/home/radek/repos/sentiment_analysis/build/luacpp/Source/googletest-prefix/src/googletest-stamp"
  "/home/radek/repos/sentiment_analysis/build/luacpp/Source/googletest-prefix/src"
  "/home/radek/repos/sentiment_analysis/build/luacpp/Source/googletest-prefix/src/googletest-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/radek/repos/sentiment_analysis/build/luacpp/Source/googletest-prefix/src/googletest-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/radek/repos/sentiment_analysis/build/luacpp/Source/googletest-prefix/src/googletest-stamp${cfgdir}") # cfgdir has leading slash
endif()
