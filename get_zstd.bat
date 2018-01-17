echo off

echo "zstd"
if not exist zstd (

	git clone https://github.com/facebook/zstd.git
	pushd zstd
	
	rem build\VS_scripts\build.generic.cmd VS2015 x64 Release v120
	mkdir build64 & pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..\build\cmake
	popd
	
	popd
	
) else (

	echo "exists already"
	pushd zstd
	
	git pull	
	
	rem build\VS_scripts\build.generic.cmd VS2015 x64 Release v120
	pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..\build\cmake
	popd
	
	popd
)


