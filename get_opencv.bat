echo off
echo "opencv"
if not exist opencv (
	echo "libzmq NOT exist checkout..."
	git clone https://github.com/opencv/opencv.git
	pushd opencv	
	popd
) else (
	echo "opencv exists already"
	pushd opencv
	git pull	
	popd
)

pause