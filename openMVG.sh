#!/bin/bash

git clone --recursive https://github.com/openMVG/openMVG.git ${HOME}/dev/openMVG/
cd ${HOME}/dev/openMVG/
mkdir openMVG_Build
cd openMVG_Build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DOpenMVG_BUILD_TESTS=ON -DOpenMVG_BUILD_EXAMPLES=ON . ../src/
make -j 8

