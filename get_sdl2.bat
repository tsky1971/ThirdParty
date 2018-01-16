echo off

set HG_EXE=C:\"Program Files"\Mercurial\hg

if not exist SDL (
	%HG_EXE% clone https://hg.libsdl.org/SDL
	pushd SDL

	mkdir build64 & pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..
	popd
	
	popd
) else (
	pushd SDL
	%HG_EXE% pull
	
	pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..
	popd
	
	popd
)



if not exist SDL_image (
	%HG_EXE% clone https://hg.libsdl.org/SDL_image
	pushd SDL_image
	
	REM mkdir build64 & pushd build64
	REM cmake -G "Visual Studio 15 2017 Win64" ..
	REM popd
	
	popd
) else (
	pushd SDL_image
	%HG_EXE% pull
	
	REM pushd build64
	REM cmake -G "Visual Studio 15 2017 Win64" ..
	REM popd
	
	popd
)



if not exist SDL_mixer (
	%HG_EXE% clone https://hg.libsdl.org/SDL_mixer
	pushd SDL_mixer

	REM mkdir build64 & pushd build64
	REM cmake -G "Visual Studio 15 2017 Win64" ..
	REM popd
	
	popd
) else (
	pushd SDL_mixer
	%HG_EXE% pull
	
	REM pushd build64
	REM cmake -G "Visual Studio 15 2017 Win64" ..
	REM popd
	
	popd
)



if not exist SDL_net (
	%HG_EXE% clone https://hg.libsdl.org/SDL_net
	pushd SDL_net
	
	REM mkdir build64 & pushd build64
	REM cmake -G "Visual Studio 15 2017 Win64" ..
	REM popd
	
	popd
) else (
	pushd SDL_net
	%HG_EXE% pull
	
	REM pushd build64
	REM cmake -G "Visual Studio 15 2017 Win64" ..
	REM popd
	
	popd
)



if not exist SDL_ttf (
	%HG_EXE% clone https://hg.libsdl.org/SDL_ttf
	pushd SDL_ttf

	REM mkdir build64 & pushd build64
	REM cmake -G "Visual Studio 15 2017 Win64" ..
	REM popd
	
	popd
) else (
	pushd SDL_ttf
	%HG_EXE% pull
	
	REM pushd build64
	REM cmake -G "Visual Studio 15 2017 Win64" ..
	REM popd
	
	popd
)


if not exist SDL_rtf (
	%HG_EXE% clone https://hg.libsdl.org/SDL_rtf
	pushd SDL_rtf

	REM mkdir build64 & pushd build64
	REM cmake -G "Visual Studio 15 2017 Win64" ..
	REM popd
	
	popd
) else (
	pushd SDL_rtf
	%HG_EXE% pull
	
	REM pushd build64
	REM cmake -G "Visual Studio 15 2017 Win64" ..
	REM popd
	
	popd
)



