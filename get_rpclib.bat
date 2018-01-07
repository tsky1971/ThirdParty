
echo "rpclib"
if not exist rpclib (

	git clone https://github.com/rpclib/rpclib.git
	pushd rpclib
	
	mkdir build32 & pushd build32
	cmake -G "Visual Studio 15 2017" ..
	popd

	mkdir build64 & pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..
	popd

	cmake --build build32 --config Release
	cmake --build build64 --config Release
	
	popd
	
) else (

	echo "exists already"
	pushd rpclib
	
	git pull
	
	pushd build32
	cmake -G "Visual Studio 15 2017" ..
	popd
	
	pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..
	popd
	
	popd
)


