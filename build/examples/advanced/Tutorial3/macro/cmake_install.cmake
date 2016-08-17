# Install script for directory: /Users/turany/development/FairRoot/examples/advanced/Tutorial3/macro

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/advanced/Tutorial3" TYPE FILE FILES
    "/Users/turany/development/FairRoot/examples/advanced/Tutorial3/macro/run_sim.C"
    "/Users/turany/development/FairRoot/examples/advanced/Tutorial3/macro/run_digi.C"
    "/Users/turany/development/FairRoot/examples/advanced/Tutorial3/macro/run_reco.C"
    "/Users/turany/development/FairRoot/examples/advanced/Tutorial3/macro/eventDisplay.C"
    "/Users/turany/development/FairRoot/examples/advanced/Tutorial3/macro/run_digi_timebased.C"
    "/Users/turany/development/FairRoot/examples/advanced/Tutorial3/macro/run_reco_timebased.C"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fairbase/examples/advanced/Tutorial3/macro/data" TYPE FILE FILES "/Users/turany/development/FairRoot/examples/advanced/Tutorial3/macro/data/dummy.txt")
endif()

