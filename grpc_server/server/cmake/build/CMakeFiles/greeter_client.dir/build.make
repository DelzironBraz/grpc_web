# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /home/delzironlima/.local/bin/cmake

# The command to remove a file.
RM = /home/delzironlima/.local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/cmake/build

# Include any dependencies generated for this target.
include CMakeFiles/greeter_client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/greeter_client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/greeter_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/greeter_client.dir/flags.make

CMakeFiles/greeter_client.dir/greeter_client.cc.o: CMakeFiles/greeter_client.dir/flags.make
CMakeFiles/greeter_client.dir/greeter_client.cc.o: /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/greeter_client.cc
CMakeFiles/greeter_client.dir/greeter_client.cc.o: CMakeFiles/greeter_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/greeter_client.dir/greeter_client.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/greeter_client.dir/greeter_client.cc.o -MF CMakeFiles/greeter_client.dir/greeter_client.cc.o.d -o CMakeFiles/greeter_client.dir/greeter_client.cc.o -c /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/greeter_client.cc

CMakeFiles/greeter_client.dir/greeter_client.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/greeter_client.dir/greeter_client.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/greeter_client.cc > CMakeFiles/greeter_client.dir/greeter_client.cc.i

CMakeFiles/greeter_client.dir/greeter_client.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/greeter_client.dir/greeter_client.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/greeter_client.cc -o CMakeFiles/greeter_client.dir/greeter_client.cc.s

# Object files for target greeter_client
greeter_client_OBJECTS = \
"CMakeFiles/greeter_client.dir/greeter_client.cc.o"

# External object files for target greeter_client
greeter_client_EXTERNAL_OBJECTS =

greeter_client: CMakeFiles/greeter_client.dir/greeter_client.cc.o
greeter_client: CMakeFiles/greeter_client.dir/build.make
greeter_client: libhw_grpc_proto.a
greeter_client: /lib/libabsl_flags_parse.a
greeter_client: /lib/libgrpc++_reflection.a
greeter_client: /lib/libgrpc++.a
greeter_client: /lib/libprotobuf.a
greeter_client: /lib/libgrpc.a
greeter_client: /lib/libupb_json_lib.a
greeter_client: /lib/libupb_textformat_lib.a
greeter_client: /lib/libupb_mini_descriptor_lib.a
greeter_client: /lib/libupb_wire_lib.a
greeter_client: /lib/libutf8_range_lib.a
greeter_client: /lib/libupb_message_lib.a
greeter_client: /lib/libupb_base_lib.a
greeter_client: /lib/libupb_mem_lib.a
greeter_client: /lib/libre2.a
greeter_client: /lib/libz.a
greeter_client: /lib/libcares.a
greeter_client: /lib/libgpr.a
greeter_client: /lib/libssl.a
greeter_client: /lib/libcrypto.a
greeter_client: /lib/libaddress_sorting.a
greeter_client: /lib/libabsl_log_internal_check_op.a
greeter_client: /lib/libabsl_leak_check.a
greeter_client: /lib/libabsl_die_if_null.a
greeter_client: /lib/libabsl_log_internal_conditions.a
greeter_client: /lib/libabsl_log_internal_message.a
greeter_client: /lib/libabsl_log_internal_nullguard.a
greeter_client: /lib/libabsl_examine_stack.a
greeter_client: /lib/libabsl_log_internal_format.a
greeter_client: /lib/libabsl_log_internal_proto.a
greeter_client: /lib/libabsl_log_internal_log_sink_set.a
greeter_client: /lib/libabsl_log_sink.a
greeter_client: /lib/libabsl_log_entry.a
greeter_client: /lib/libabsl_log_initialize.a
greeter_client: /lib/libabsl_log_internal_globals.a
greeter_client: /lib/libabsl_log_globals.a
greeter_client: /lib/libabsl_vlog_config_internal.a
greeter_client: /lib/libabsl_log_internal_fnmatch.a
greeter_client: /lib/libabsl_random_distributions.a
greeter_client: /lib/libabsl_random_seed_sequences.a
greeter_client: /lib/libabsl_random_internal_pool_urbg.a
greeter_client: /lib/libabsl_random_internal_randen.a
greeter_client: /lib/libabsl_random_internal_randen_hwaes.a
greeter_client: /lib/libabsl_random_internal_randen_hwaes_impl.a
greeter_client: /lib/libabsl_random_internal_randen_slow.a
greeter_client: /lib/libabsl_random_internal_platform.a
greeter_client: /lib/libabsl_random_internal_seed_material.a
greeter_client: /lib/libabsl_random_seed_gen_exception.a
greeter_client: /lib/libabsl_statusor.a
greeter_client: /lib/libabsl_status.a
greeter_client: /lib/libabsl_strerror.a
greeter_client: /lib/libutf8_validity.a
greeter_client: /lib/libabsl_flags_usage.a
greeter_client: /lib/libabsl_flags_usage_internal.a
greeter_client: /lib/libabsl_flags_internal.a
greeter_client: /lib/libabsl_flags_marshalling.a
greeter_client: /lib/libabsl_flags_reflection.a
greeter_client: /lib/libabsl_flags_config.a
greeter_client: /lib/libabsl_cord.a
greeter_client: /lib/libabsl_cordz_info.a
greeter_client: /lib/libabsl_cord_internal.a
greeter_client: /lib/libabsl_cordz_functions.a
greeter_client: /lib/libabsl_cordz_handle.a
greeter_client: /lib/libabsl_crc_cord_state.a
greeter_client: /lib/libabsl_crc32c.a
greeter_client: /lib/libabsl_str_format_internal.a
greeter_client: /lib/libabsl_crc_internal.a
greeter_client: /lib/libabsl_crc_cpu_detect.a
greeter_client: /lib/libabsl_raw_hash_set.a
greeter_client: /lib/libabsl_hash.a
greeter_client: /lib/libabsl_bad_variant_access.a
greeter_client: /lib/libabsl_city.a
greeter_client: /lib/libabsl_low_level_hash.a
greeter_client: /lib/libabsl_hashtablez_sampler.a
greeter_client: /lib/libabsl_exponential_biased.a
greeter_client: /lib/libabsl_flags_private_handle_accessor.a
greeter_client: /lib/libabsl_flags_commandlineflag.a
greeter_client: /lib/libabsl_bad_optional_access.a
greeter_client: /lib/libabsl_flags_commandlineflag_internal.a
greeter_client: /lib/libabsl_flags_program_name.a
greeter_client: /lib/libabsl_synchronization.a
greeter_client: /lib/libabsl_graphcycles_internal.a
greeter_client: /lib/libabsl_kernel_timeout_internal.a
greeter_client: /lib/libabsl_time.a
greeter_client: /lib/libabsl_civil_time.a
greeter_client: /lib/libabsl_time_zone.a
greeter_client: /lib/libabsl_stacktrace.a
greeter_client: /lib/libabsl_symbolize.a
greeter_client: /lib/libabsl_strings.a
greeter_client: /lib/libabsl_strings_internal.a
greeter_client: /lib/libabsl_string_view.a
greeter_client: /lib/libabsl_int128.a
greeter_client: /lib/libabsl_throw_delegate.a
greeter_client: /lib/libabsl_malloc_internal.a
greeter_client: /lib/libabsl_debugging_internal.a
greeter_client: /lib/libabsl_demangle_internal.a
greeter_client: /lib/libabsl_base.a
greeter_client: /lib/libabsl_raw_logging_internal.a
greeter_client: /lib/libabsl_log_severity.a
greeter_client: /lib/libabsl_spinlock_wait.a
greeter_client: CMakeFiles/greeter_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable greeter_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/greeter_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/greeter_client.dir/build: greeter_client
.PHONY : CMakeFiles/greeter_client.dir/build

CMakeFiles/greeter_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/greeter_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/greeter_client.dir/clean

CMakeFiles/greeter_client.dir/depend:
	cd /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/cmake/build /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/cmake/build /home/delzironlima/UnB/PSPD/grpc/examples/cpp/helloworld/cmake/build/CMakeFiles/greeter_client.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/greeter_client.dir/depend

