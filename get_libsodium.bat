echo "libsodium"
if not exist libsodium (
	git clone git://github.com/jedisct1/libsodium.git
	popd
) else (
	echo "libsodium exists already"
	pushd libsodium
	git pull
	popd
)
