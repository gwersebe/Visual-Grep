# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build

# Utility rule file for uninstall.

# Include any custom commands dependencies for this target.
include fltk/CMakeFiles/uninstall.dir/compiler_depend.make

# Include the progress variables for this target.
include fltk/CMakeFiles/uninstall.dir/progress.make

fltk/CMakeFiles/uninstall:
	cd /Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/fltk && /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake -P /Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/fltk/cmake_uninstall.cmake

uninstall: fltk/CMakeFiles/uninstall
uninstall: fltk/CMakeFiles/uninstall.dir/build.make
.PHONY : uninstall

# Rule to build all files generated by this target.
fltk/CMakeFiles/uninstall.dir/build: uninstall
.PHONY : fltk/CMakeFiles/uninstall.dir/build

fltk/CMakeFiles/uninstall.dir/clean:
	cd /Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/fltk && $(CMAKE_COMMAND) -P CMakeFiles/uninstall.dir/cmake_clean.cmake
.PHONY : fltk/CMakeFiles/uninstall.dir/clean

fltk/CMakeFiles/uninstall.dir/depend:
	cd /Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk /Users/gabrielwersebe/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fltk-sys-1.4.31/cfltk/fltk /Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build /Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/fltk /Users/gabrielwersebe/Desktop/Coding/visual-grep/target/debug/build/fltk-sys-ad22ad6befcf10b9/out/build/fltk/CMakeFiles/uninstall.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : fltk/CMakeFiles/uninstall.dir/depend

