# Install script for directory: /Users/turany/development/FairRoot/examples/MQ/8-multipart

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/turany/development/install/FairRoot_dev_R6")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/turany/development/FairRoot/examples/MQ/8-multipart/FairMQExample8Sampler.h"
    "/Users/turany/development/FairRoot/examples/MQ/8-multipart/FairMQExample8Sink.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/turany/development/FairRoot/build/lib/libFairMQExample8.16.06.00.dylib"
    "/Users/turany/development/FairRoot/build/lib/libFairMQExample8.16.dylib"
    "/Users/turany/development/FairRoot/build/lib/libFairMQExample8.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libFairMQExample8.16.06.00.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libFairMQExample8.16.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libFairMQExample8.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/turany/development/install/RC_may16_R6/lib64"
        "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/turany/development/FairRoot/build/lib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin" TYPE EXECUTABLE FILES "/Users/turany/development/FairRoot/build/bin/examples/MQ/8-multipart/ex8-sampler")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin/ex8-sampler" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin/ex8-sampler")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/turany/development/install/RC_may16_R6/lib64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin/ex8-sampler")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/turany/development/FairRoot/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin/ex8-sampler")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin/ex8-sampler")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin" TYPE EXECUTABLE FILES "/Users/turany/development/FairRoot/build/bin/examples/MQ/8-multipart/ex8-sink")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin/ex8-sink" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin/ex8-sink")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/turany/development/install/RC_may16_R6/lib64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin/ex8-sink")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/turany/development/FairRoot/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin/ex8-sink")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/bin/ex8-sink")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/MQ/8-multipart/config" TYPE FILE FILES "/Users/turany/development/FairRoot/examples/MQ/8-multipart/ex8-multipart.json")
endif()

