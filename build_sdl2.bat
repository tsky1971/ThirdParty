echo off

rem if not exist "C:\Program Files (x86)\CMake\" goto INSTALL_CMAKE
if not exist "C:\Program Files\CMake\" goto INSTALL_CMAKE

call "C:\Programme\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"

call "C:\Programme\Microsoft Visual Studio 15.0\VC\vcvarsall.bat"
call "C:\Program Files (x86)\Microsoft Visual Studio 15.0\VC\vcvarsall.bat"

echo "sdl2"

pushd SDL
	if not exist build64 (
		mkdir build64
	)

	pushd build64
		cmake -G "Visual Studio 15 2017 Win64"  -Wno-dev ..
	popd

	cmake --build build64 --config Release

popd

echo "SDL_image"

pushd SDL_image

	msbuild VisualC\SDL_image.sln /t:ALL_BUILD /p:Configuration="Release"
	
popd


echo "SUCCESS"
goto ENDE

:INSTALL_MERCURIAL
cls
echo "Please install Mercurial x64"
pause

:INSTALL_CMAKE
cls
echo "Please install cmake"
pause

:ENDE
echo "finish."
pause
