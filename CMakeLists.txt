cmake_minimum_required(VERSION 3.9)
project(Demo)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

find_package(Threads)
find_package(V8)

file(GLOB SRC
    "src/*.h"
    "src/*.cpp"
)

add_executable(Demo ${SRC})

target_include_directories(Demo PRIVATE ${V8_INCLUDE_DIR})
target_link_directories(Demo PRIVATE ${V8_LINK_DIR})
target_link_libraries(Demo PRIVATE ${V8_LIBRARIES})
target_compile_definitions(Demo PRIVATE ${V8_COMPILE_DEFINITIONS})
