cmake_minimum_required(VERSION 3.23.2)
project(Testproject VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(${PROJECT_NAME}
    main.cpp
    test.cpp 
)

# add_custom_target(run
#     COMMAND binary
#     DEPENDS binary
#     WORKING_DIRECTORY ${CMAKE_PROJECT_DIR}
# )
