# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ivo/ubtouchApps/RPS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ivo/ubtouchApps/RPS/build/all/app

# Utility rule file for rps_FILES.

# Include the progress variables for this target.
include CMakeFiles/rps_FILES.dir/progress.make

rps_FILES: CMakeFiles/rps_FILES.dir/build.make

.PHONY : rps_FILES

# Rule to build all files generated by this target.
CMakeFiles/rps_FILES.dir/build: rps_FILES

.PHONY : CMakeFiles/rps_FILES.dir/build

CMakeFiles/rps_FILES.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rps_FILES.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rps_FILES.dir/clean

CMakeFiles/rps_FILES.dir/depend:
	cd /home/ivo/ubtouchApps/RPS/build/all/app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ivo/ubtouchApps/RPS /home/ivo/ubtouchApps/RPS /home/ivo/ubtouchApps/RPS/build/all/app /home/ivo/ubtouchApps/RPS/build/all/app /home/ivo/ubtouchApps/RPS/build/all/app/CMakeFiles/rps_FILES.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rps_FILES.dir/depend

