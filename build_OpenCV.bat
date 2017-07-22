echo on
echo "build opencv"

if not exist opencv (
	echo "you to get it first"
	
) else (
	cd opencv
	
	if not exist build32 (
		mkdir build32
	)
	cd build32
		
	cmake -G "Visual Studio 14 2015" ..
	cd ..

	pause

	if not exist build64 (
		mkdir build64
	)
	cd build64
	cmake -G "Visual Studio 14 2015 Win64" ..
	cd ..

	pause

	cmake --build build64 --config Release

	pause

	cmake --build build32 --config Release

	pause
)