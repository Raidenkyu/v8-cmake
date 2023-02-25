# v8-cmake
A small experiment building a customizable JS runtime in C++ and with CMake, using Google iconic JS engine V8.

## Build Instruction
### Download and Build V8
```sh
$ tools/build_v8.sh
```
Note: This process may take a few minutes to finish, but it is required to run only once (unless there is a newer version of V8)
### Build and Run Demo Runtime
```sh
$ tools/build_demo.sh
```
Note: This script assumes that the previous one was already run