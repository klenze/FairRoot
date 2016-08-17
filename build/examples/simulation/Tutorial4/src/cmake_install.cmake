# Install script for directory: /Users/turany/development/FairRoot/examples/simulation/Tutorial4/src

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
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/mc/FairTutorialDet4.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/mc/FairTutorialDet4Geo.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/param/FairTutorialDet4ContFact.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/param/FairTutorialDet4GeoPar.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/param/FairTutorialDet4MisalignPar.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/data/FairTutorialDet4Point.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/data/FairTutorialDet4Hit.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/reco/FairTutorialDet4HitProducerIdealMisalign.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/reco/FairTutorialDet4StraightLineFitter.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/reco/FairTutorialDet4MilleWriter.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/tools/FairTutorialDet4GeoHandler.h"
    "/Users/turany/development/FairRoot/examples/simulation/Tutorial4/src/display/FairTutorialDet4PointDraw.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES
    "/Users/turany/development/FairRoot/build/lib/G__Tutorial4Dict_rdict.pcm"
    "/Users/turany/development/FairRoot/build/lib/libTutorial4.rootmap"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/turany/development/FairRoot/build/lib/libTutorial4.16.06.00.dylib"
    "/Users/turany/development/FairRoot/build/lib/libTutorial4.16.dylib"
    "/Users/turany/development/FairRoot/build/lib/libTutorial4.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTutorial4.16.06.00.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTutorial4.16.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTutorial4.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/turany/development/install/RC_may16_R6/lib/root"
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

