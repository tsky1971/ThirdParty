
pushd opencv

git pull

pushd build32
cmake -G "Visual Studio 14 2015" ..
popd

pushd build64
cmake -G "Visual Studio 14 2015 Win64" ..
popd

cmake --build build32 --config Release

pause

cmake --build build64 --config Release

pause