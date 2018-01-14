hg clone https://hg.libsdl.org/SDL
cd SDL
	mkdir build
	cd build
		../configure
		make
		sudo make install
	cd ..
cd ..

hg clone https://hg.libsdl.org/SDL_image
cd SDL_image
	mkdir build
	./autogen.sh
	cd build
		../configure
		make
		sudo make install
	cd ..
cd ..

hg clone https://hg.libsdl.org/SDL_mixer
cd SDL_mixer
	mkdir build
	cd build
		../configure
		make
		sudo make install
	cd ..
cd ..


hg clone https://hg.libsdl.org/SDL_net
cd SDL_net
        mkdir build
	./autogen.sh
        cd build
                ../configure
                make
                sudo make install
        cd ..
cd ..


hg clone https://hg.libsdl.org/SDL_ttf
cd SDL_ttf
        mkdir build
	./autogen.sh
        cd build
                ../configure
                make
                sudo make install
        cd ..
cd ..


hg clone https://hg.libsdl.org/SDL_rtf
cd SDL_rtf
#        mkdir build
#	./autogen.sh
 #       cd build
  #              ../configure
   #             make
    #            sudo make install
     #   cd ..
cd ..


