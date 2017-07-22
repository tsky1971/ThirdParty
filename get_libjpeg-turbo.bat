#!/bin/sh -e

echo "get libjpeg-turbo"
git clone https://github.com/libjpeg-turbo/libjpeg-turbo.git

pushd libjpeg-turbo

mkdir build32 & pushd build32
cmake -G "Visual Studio 14 2015" ..
popd

mkdir build64 & pushd build64
cmake -G "Visual Studio 14 2015 Win64" ..
popd

cmake --build build32 --config Release
cmake --build build64 --config Release
