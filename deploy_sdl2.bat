echo off

xcopy SDL\include ..\include\SDL\ /V/S/E/Y
xcopy SDL\build64\Release ..\bin\x64\Release /V/S/E/Y

copy SDL_image\SDL_image.h ..\include\SDL\SDL_image.h /Y
xcopy SDL_image\VisualC\x64\Release ..\bin\x64\Release /V/S/E/Y

copy SDL_net\SDL_net.h ..\include\SDL\SDL_net.h /Y
xcopy SDL_net\VisualC\x64\Release ..\bin\x64\Release /V/S/E/Y
