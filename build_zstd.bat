echo off
echo "zstd"

pushd zstd

git pull

pushd build64
cmake -G "Visual Studio 15 2017 Win64"  -Wno-dev ..\build\cmake
popd

cmake --build build64 --config Release

popd

pause
