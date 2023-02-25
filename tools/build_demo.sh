#!/bin/bash

cmake -B build

if cmake --build build --target Demo ; then
    ./build/Demo
fi