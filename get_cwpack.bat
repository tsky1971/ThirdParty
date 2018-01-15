echo off

echo "get CWPack"
if not exist lz4 (
	git clone https://github.com/clwi/CWPack.git

) else (
	echo "exists already"
	cd CWPack
	git pull
	cd -
)


