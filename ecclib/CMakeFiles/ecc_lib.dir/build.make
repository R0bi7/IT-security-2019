# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/its2019/its2019g25

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/its2019/its2019g25

# Include any dependencies generated for this target.
include ecclib/CMakeFiles/ecc_lib.dir/depend.make

# Include the progress variables for this target.
include ecclib/CMakeFiles/ecc_lib.dir/progress.make

# Include the compile flags for this target's objects.
include ecclib/CMakeFiles/ecc_lib.dir/flags.make

ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o: ecclib/CMakeFiles/ecc_lib.dir/flags.make
ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o: ecclib/bi/bi_gen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o   -c /home/its2019/its2019g25/ecclib/bi/bi_gen.c

ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ecc_lib.dir/bi/bi_gen.c.i"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/its2019/its2019g25/ecclib/bi/bi_gen.c > CMakeFiles/ecc_lib.dir/bi/bi_gen.c.i

ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ecc_lib.dir/bi/bi_gen.c.s"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/its2019/its2019g25/ecclib/bi/bi_gen.c -o CMakeFiles/ecc_lib.dir/bi/bi_gen.c.s

ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o.requires:

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o.requires

ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o.provides: ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o.requires
	$(MAKE) -f ecclib/CMakeFiles/ecc_lib.dir/build.make ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o.provides.build
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o.provides

ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o.provides.build: ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o


ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o: ecclib/CMakeFiles/ecc_lib.dir/flags.make
ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o: ecclib/eccp/eccp_affine.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o   -c /home/its2019/its2019g25/ecclib/eccp/eccp_affine.c

ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.i"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/its2019/its2019g25/ecclib/eccp/eccp_affine.c > CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.i

ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.s"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/its2019/its2019g25/ecclib/eccp/eccp_affine.c -o CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.s

ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o.requires:

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o.requires

ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o.provides: ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o.requires
	$(MAKE) -f ecclib/CMakeFiles/ecc_lib.dir/build.make ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o.provides.build
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o.provides

ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o.provides.build: ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o


ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o: ecclib/CMakeFiles/ecc_lib.dir/flags.make
ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o: ecclib/eccp/eccp_jacobian.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o   -c /home/its2019/its2019g25/ecclib/eccp/eccp_jacobian.c

ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.i"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/its2019/its2019g25/ecclib/eccp/eccp_jacobian.c > CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.i

ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.s"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/its2019/its2019g25/ecclib/eccp/eccp_jacobian.c -o CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.s

ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o.requires:

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o.requires

ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o.provides: ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o.requires
	$(MAKE) -f ecclib/CMakeFiles/ecc_lib.dir/build.make ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o.provides.build
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o.provides

ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o.provides.build: ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o


ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o: ecclib/CMakeFiles/ecc_lib.dir/flags.make
ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o: ecclib/gfp/gfp_gen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o   -c /home/its2019/its2019g25/ecclib/gfp/gfp_gen.c

ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.i"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/its2019/its2019g25/ecclib/gfp/gfp_gen.c > CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.i

ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.s"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/its2019/its2019g25/ecclib/gfp/gfp_gen.c -o CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.s

ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o.requires:

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o.requires

ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o.provides: ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o.requires
	$(MAKE) -f ecclib/CMakeFiles/ecc_lib.dir/build.make ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o.provides.build
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o.provides

ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o.provides.build: ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o


ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o: ecclib/CMakeFiles/ecc_lib.dir/flags.make
ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o: ecclib/gfp/gfp_mont.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o   -c /home/its2019/its2019g25/ecclib/gfp/gfp_mont.c

ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.i"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/its2019/its2019g25/ecclib/gfp/gfp_mont.c > CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.i

ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.s"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/its2019/its2019g25/ecclib/gfp/gfp_mont.c -o CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.s

ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o.requires:

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o.requires

ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o.provides: ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o.requires
	$(MAKE) -f ecclib/CMakeFiles/ecc_lib.dir/build.make ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o.provides.build
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o.provides

ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o.provides.build: ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o


ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o: ecclib/CMakeFiles/ecc_lib.dir/flags.make
ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o: ecclib/protocols/ecdh.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o   -c /home/its2019/its2019g25/ecclib/protocols/ecdh.c

ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ecc_lib.dir/protocols/ecdh.c.i"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/its2019/its2019g25/ecclib/protocols/ecdh.c > CMakeFiles/ecc_lib.dir/protocols/ecdh.c.i

ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ecc_lib.dir/protocols/ecdh.c.s"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/its2019/its2019g25/ecclib/protocols/ecdh.c -o CMakeFiles/ecc_lib.dir/protocols/ecdh.c.s

ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o.requires:

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o.requires

ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o.provides: ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o.requires
	$(MAKE) -f ecclib/CMakeFiles/ecc_lib.dir/build.make ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o.provides.build
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o.provides

ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o.provides.build: ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o


ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o: ecclib/CMakeFiles/ecc_lib.dir/flags.make
ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o: ecclib/protocols/ecdsa.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o   -c /home/its2019/its2019g25/ecclib/protocols/ecdsa.c

ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.i"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/its2019/its2019g25/ecclib/protocols/ecdsa.c > CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.i

ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.s"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/its2019/its2019g25/ecclib/protocols/ecdsa.c -o CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.s

ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o.requires:

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o.requires

ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o.provides: ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o.requires
	$(MAKE) -f ecclib/CMakeFiles/ecc_lib.dir/build.make ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o.provides.build
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o.provides

ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o.provides.build: ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o


ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o: ecclib/CMakeFiles/ecc_lib.dir/flags.make
ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o: ecclib/protocols/eckeygen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o   -c /home/its2019/its2019g25/ecclib/protocols/eckeygen.c

ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.i"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/its2019/its2019g25/ecclib/protocols/eckeygen.c > CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.i

ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.s"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/its2019/its2019g25/ecclib/protocols/eckeygen.c -o CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.s

ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o.requires:

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o.requires

ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o.provides: ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o.requires
	$(MAKE) -f ecclib/CMakeFiles/ecc_lib.dir/build.make ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o.provides.build
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o.provides

ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o.provides.build: ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o


ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o: ecclib/CMakeFiles/ecc_lib.dir/flags.make
ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o: ecclib/utils/param.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ecc_lib.dir/utils/param.c.o   -c /home/its2019/its2019g25/ecclib/utils/param.c

ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ecc_lib.dir/utils/param.c.i"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/its2019/its2019g25/ecclib/utils/param.c > CMakeFiles/ecc_lib.dir/utils/param.c.i

ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ecc_lib.dir/utils/param.c.s"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/its2019/its2019g25/ecclib/utils/param.c -o CMakeFiles/ecc_lib.dir/utils/param.c.s

ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o.requires:

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o.requires

ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o.provides: ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o.requires
	$(MAKE) -f ecclib/CMakeFiles/ecc_lib.dir/build.make ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o.provides.build
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o.provides

ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o.provides.build: ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o


ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o: ecclib/CMakeFiles/ecc_lib.dir/flags.make
ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o: ecclib/utils/rand.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ecc_lib.dir/utils/rand.c.o   -c /home/its2019/its2019g25/ecclib/utils/rand.c

ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ecc_lib.dir/utils/rand.c.i"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/its2019/its2019g25/ecclib/utils/rand.c > CMakeFiles/ecc_lib.dir/utils/rand.c.i

ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ecc_lib.dir/utils/rand.c.s"
	cd /home/its2019/its2019g25/ecclib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/its2019/its2019g25/ecclib/utils/rand.c -o CMakeFiles/ecc_lib.dir/utils/rand.c.s

ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o.requires:

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o.requires

ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o.provides: ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o.requires
	$(MAKE) -f ecclib/CMakeFiles/ecc_lib.dir/build.make ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o.provides.build
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o.provides

ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o.provides.build: ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o


# Object files for target ecc_lib
ecc_lib_OBJECTS = \
"CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o" \
"CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o" \
"CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o" \
"CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o" \
"CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o" \
"CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o" \
"CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o" \
"CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o" \
"CMakeFiles/ecc_lib.dir/utils/param.c.o" \
"CMakeFiles/ecc_lib.dir/utils/rand.c.o"

# External object files for target ecc_lib
ecc_lib_EXTERNAL_OBJECTS =

ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/build.make
ecclib/libecc_lib.so: ecclib/CMakeFiles/ecc_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/its2019/its2019g25/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C shared library libecc_lib.so"
	cd /home/its2019/its2019g25/ecclib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ecc_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ecclib/CMakeFiles/ecc_lib.dir/build: ecclib/libecc_lib.so

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/build

ecclib/CMakeFiles/ecc_lib.dir/requires: ecclib/CMakeFiles/ecc_lib.dir/bi/bi_gen.c.o.requires
ecclib/CMakeFiles/ecc_lib.dir/requires: ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_affine.c.o.requires
ecclib/CMakeFiles/ecc_lib.dir/requires: ecclib/CMakeFiles/ecc_lib.dir/eccp/eccp_jacobian.c.o.requires
ecclib/CMakeFiles/ecc_lib.dir/requires: ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_gen.c.o.requires
ecclib/CMakeFiles/ecc_lib.dir/requires: ecclib/CMakeFiles/ecc_lib.dir/gfp/gfp_mont.c.o.requires
ecclib/CMakeFiles/ecc_lib.dir/requires: ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdh.c.o.requires
ecclib/CMakeFiles/ecc_lib.dir/requires: ecclib/CMakeFiles/ecc_lib.dir/protocols/ecdsa.c.o.requires
ecclib/CMakeFiles/ecc_lib.dir/requires: ecclib/CMakeFiles/ecc_lib.dir/protocols/eckeygen.c.o.requires
ecclib/CMakeFiles/ecc_lib.dir/requires: ecclib/CMakeFiles/ecc_lib.dir/utils/param.c.o.requires
ecclib/CMakeFiles/ecc_lib.dir/requires: ecclib/CMakeFiles/ecc_lib.dir/utils/rand.c.o.requires

.PHONY : ecclib/CMakeFiles/ecc_lib.dir/requires

ecclib/CMakeFiles/ecc_lib.dir/clean:
	cd /home/its2019/its2019g25/ecclib && $(CMAKE_COMMAND) -P CMakeFiles/ecc_lib.dir/cmake_clean.cmake
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/clean

ecclib/CMakeFiles/ecc_lib.dir/depend:
	cd /home/its2019/its2019g25 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/its2019/its2019g25 /home/its2019/its2019g25/ecclib /home/its2019/its2019g25 /home/its2019/its2019g25/ecclib /home/its2019/its2019g25/ecclib/CMakeFiles/ecc_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ecclib/CMakeFiles/ecc_lib.dir/depend
