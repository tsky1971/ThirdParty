#!/bin/sh
#
#

if [ ! -d opencv ]
then 
	git clone https://github.com/opencv/opencv.git
	cd opencv
	mkdir build
	cd build
	cmake ..
	make -j4
	sudo make install	
	cd -
else
	echo "exists already"
	cd opencv
	git pull
	cd build
	cmake ..
	make -j4
	sudo make install
	cd -
fi
