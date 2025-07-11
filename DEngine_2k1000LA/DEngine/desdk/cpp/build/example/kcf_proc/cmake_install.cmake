# Install script for directory: /DEngine/desdk/cpp/example/kcf_proc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/DEngine/desdk/platform/host_linux-loongson")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/DEngine/desdk/cpp/example/kcf_proc/host/bin/kcf_proc" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/DEngine/desdk/cpp/example/kcf_proc/host/bin/kcf_proc")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/DEngine/desdk/cpp/example/kcf_proc/host/bin/kcf_proc"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/DEngine/desdk/cpp/example/kcf_proc/host/bin/kcf_proc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/DEngine/desdk/cpp/example/kcf_proc/host/bin" TYPE EXECUTABLE FILES "/DEngine/desdk/cpp/build/example/kcf_proc/kcf_proc")
  if(EXISTS "$ENV{DESTDIR}/DEngine/desdk/cpp/example/kcf_proc/host/bin/kcf_proc" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/DEngine/desdk/cpp/example/kcf_proc/host/bin/kcf_proc")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/DEngine/desdk/cpp/example/kcf_proc/host/bin/kcf_proc"
         OLD_RPATH "/DEngine/desdk/cpp/example/kcf_proc/../../../platform/host_linux-loongson/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/DEngine/desdk/cpp/example/kcf_proc/host/bin/kcf_proc")
    endif()
  endif()
endif()

