# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /usr/bin/cmake.exe

# The command to remove a file.
RM = /usr/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/manish/gsldemo/webpp/aligatorGAR

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/manish/gsldemo/webpp/aligatorGAR

# Include any dependencies generated for this target.
include CMakeFiles/hellocrow.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hellocrow.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hellocrow.dir/flags.make

CMakeFiles/hellocrow.dir/main.cpp.o: CMakeFiles/hellocrow.dir/flags.make
CMakeFiles/hellocrow.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/manish/gsldemo/webpp/aligatorGAR/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hellocrow.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hellocrow.dir/main.cpp.o -c /home/manish/gsldemo/webpp/aligatorGAR/main.cpp

CMakeFiles/hellocrow.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hellocrow.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/manish/gsldemo/webpp/aligatorGAR/main.cpp > CMakeFiles/hellocrow.dir/main.cpp.i

CMakeFiles/hellocrow.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hellocrow.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/manish/gsldemo/webpp/aligatorGAR/main.cpp -o CMakeFiles/hellocrow.dir/main.cpp.s

# Object files for target hellocrow
hellocrow_OBJECTS = \
"CMakeFiles/hellocrow.dir/main.cpp.o"

# External object files for target hellocrow
hellocrow_EXTERNAL_OBJECTS =

hellocrow.exe: CMakeFiles/hellocrow.dir/main.cpp.o
hellocrow.exe: CMakeFiles/hellocrow.dir/build.make
hellocrow.exe: /usr/lib/libboost_system.dll.a
hellocrow.exe: /usr/lib/libboost_filesystem.dll.a
hellocrow.exe: CMakeFiles/hellocrow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/manish/gsldemo/webpp/aligatorGAR/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hellocrow.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hellocrow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hellocrow.dir/build: hellocrow.exe

.PHONY : CMakeFiles/hellocrow.dir/build

CMakeFiles/hellocrow.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hellocrow.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hellocrow.dir/clean

CMakeFiles/hellocrow.dir/depend:
	cd /home/manish/gsldemo/webpp/aligatorGAR && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/manish/gsldemo/webpp/aligatorGAR /home/manish/gsldemo/webpp/aligatorGAR /home/manish/gsldemo/webpp/aligatorGAR /home/manish/gsldemo/webpp/aligatorGAR /home/manish/gsldemo/webpp/aligatorGAR/CMakeFiles/hellocrow.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hellocrow.dir/depend
