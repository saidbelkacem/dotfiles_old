cmake_minimum_required(VERSION 3.23.2)
project(Goodby VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Curses REQUIRED)
include_directories(${CURSES_INCLUDE_DIR})

add_executable(main goodby.c)
target_link_libraries(main ${CURSES_LIBRARIES})
# add_custom_target(run
#     COMMAND binary
#     DEPENDS binary
#     WORKING_DIRECTORY ${CMAKE_PROJECT_DIR}
# )
