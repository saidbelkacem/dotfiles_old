cmake_minimum_required(VERSION 3.23.2)
project(Fahrenheit VERSION 0.0.1)

set(CMAKE_C_STANDARD 11)
set(CMAKE_BUILD_TYPE Debug)
# set_property(TARGET main)


add_executable(test fahrenheit2.c)
# target_sources(main fahrenheit2.c)

# add_custom_command(TARGET test
#         POST_BUILD
#         COMMAND /bin/sh test
#         )

