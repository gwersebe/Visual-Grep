# Install script for directory: /Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/lib/libcfltk.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/lib" TYPE STATIC_LIBRARY FILES "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/libcfltk.a")
  if(EXISTS "$ENV{DESTDIR}/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/lib/libcfltk.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/lib/libcfltk.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/lib/libcfltk.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_box.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_browser.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_button.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_dialog.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_draw.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_enums.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_group.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_image.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_input.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_lock.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_macros.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_menu.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_misc.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_prefs.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_printer.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_surface.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_table.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_text.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_tree.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_utils.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_valuator.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_widget.h;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_widget.hpp;/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk/cfl_window.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/include/cfltk" TYPE FILE FILES
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_box.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_browser.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_button.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_dialog.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_draw.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_enums.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_group.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_image.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_input.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_lock.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_macros.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_menu.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_misc.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_prefs.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_printer.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_surface.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_table.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_text.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_tree.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_utils.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_valuator.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_widget.h"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_widget.hpp"
    "/Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/include/cfl_window.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/cmake/cfltk/cfltkConfig.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/cmake/cfltk/cfltkConfig.cmake"
         "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/CMakeFiles/Export/cb00c8a71cf5c434baded1719ab64f16/cfltkConfig.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/cmake/cfltk/cfltkConfig-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/cmake/cfltk/cfltkConfig.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/cmake/cfltk/cfltkConfig.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/cmake/cfltk" TYPE FILE FILES "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/CMakeFiles/Export/cb00c8a71cf5c434baded1719ab64f16/cfltkConfig.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/cmake/cfltk/cfltkConfig-debug.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/cmake/cfltk" TYPE FILE FILES "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/CMakeFiles/Export/cb00c8a71cf5c434baded1719ab64f16/cfltkConfig-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/cmake/cfltk/cfltkConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/cmake/cfltk" TYPE FILE FILES "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/cfltkConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/pkgconfig/cfltk.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/share/pkgconfig" TYPE FILE FILES "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/cfltk.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/fltk/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
