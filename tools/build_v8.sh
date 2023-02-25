#!/bin/bash

# Download depot_tools and configure them in the PATH environment variable
TOOLS_URL=https://chromium.googlesource.com/chromium/tools/depot_tools.git

git clone $TOOLS_URL tools/depot_tools
export PATH=$(pwd)/tools/depot_tools:$PATH

gclient &> /dev/null

# Clone V8 in external folder
mkdir external
cd external
fetch v8

# Build V8
cd v8
tools/dev/v8gen.py x64.release.sample
ninja -C out.gn/x64.release.sample v8_monolith
