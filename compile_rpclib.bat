
echo "rpclib"

pushd rpclib

git pull

pause

pushd build32
cmake -G "Visual Studio 15 2017"  -Wno-dev ..
popd

pause

pushd build64
cmake -G "Visual Studio 15 2017 Win64"  -Wno-dev ..
popd

pause

cmake --build build32 --config Release

pause

cmake --build build64 --config Release

popd

pause

