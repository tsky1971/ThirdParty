echo on

cd opencv
cd build32
cmake -G "Visual Studio 14 2015" ..
cd ..

pause

cd build64
cmake -G "Visual Studio 14 2015 Win64" ..
cd ..

pause

cmake --build build64 --config Release

pause

cmake --build build32 --config Release

pause
