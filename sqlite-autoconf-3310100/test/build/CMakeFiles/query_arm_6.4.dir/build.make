# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/hp/code/mysql/sqlite-autoconf-3310100/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hp/code/mysql/sqlite-autoconf-3310100/test/build

# Include any dependencies generated for this target.
include CMakeFiles/query_arm_6.4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/query_arm_6.4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/query_arm_6.4.dir/flags.make

CMakeFiles/query_arm_6.4.dir/query.c.o: CMakeFiles/query_arm_6.4.dir/flags.make
CMakeFiles/query_arm_6.4.dir/query.c.o: ../query.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hp/code/mysql/sqlite-autoconf-3310100/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/query_arm_6.4.dir/query.c.o"
	/home/hp/toolschain/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/query_arm_6.4.dir/query.c.o   -c /home/hp/code/mysql/sqlite-autoconf-3310100/test/query.c

CMakeFiles/query_arm_6.4.dir/query.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/query_arm_6.4.dir/query.c.i"
	/home/hp/toolschain/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hp/code/mysql/sqlite-autoconf-3310100/test/query.c > CMakeFiles/query_arm_6.4.dir/query.c.i

CMakeFiles/query_arm_6.4.dir/query.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/query_arm_6.4.dir/query.c.s"
	/home/hp/toolschain/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hp/code/mysql/sqlite-autoconf-3310100/test/query.c -o CMakeFiles/query_arm_6.4.dir/query.c.s

# Object files for target query_arm_6.4
query_arm_6_4_OBJECTS = \
"CMakeFiles/query_arm_6.4.dir/query.c.o"

# External object files for target query_arm_6.4
query_arm_6_4_EXTERNAL_OBJECTS =

query_arm_6.4: CMakeFiles/query_arm_6.4.dir/query.c.o
query_arm_6.4: CMakeFiles/query_arm_6.4.dir/build.make
query_arm_6.4: CMakeFiles/query_arm_6.4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hp/code/mysql/sqlite-autoconf-3310100/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable query_arm_6.4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/query_arm_6.4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/query_arm_6.4.dir/build: query_arm_6.4

.PHONY : CMakeFiles/query_arm_6.4.dir/build

CMakeFiles/query_arm_6.4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/query_arm_6.4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/query_arm_6.4.dir/clean

CMakeFiles/query_arm_6.4.dir/depend:
	cd /home/hp/code/mysql/sqlite-autoconf-3310100/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hp/code/mysql/sqlite-autoconf-3310100/test /home/hp/code/mysql/sqlite-autoconf-3310100/test /home/hp/code/mysql/sqlite-autoconf-3310100/test/build /home/hp/code/mysql/sqlite-autoconf-3310100/test/build /home/hp/code/mysql/sqlite-autoconf-3310100/test/build/CMakeFiles/query_arm_6.4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/query_arm_6.4.dir/depend

