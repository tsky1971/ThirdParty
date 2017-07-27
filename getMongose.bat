echo off


echo "mongoose"
if not exist mongoose (
	echo "mongoose NOT exist checkout..."
	git clone https://github.com/cesanta/mongoose.git
	pushd mongoose	
	popd
) else (
	echo "mongoose exists already"
	pushd mongoose
	git pull	
	popd
)
