echo off
if not exist ..\include\zmq\ (
	mkdir ..\include\zmq\
)
xcopy cppzmq\*.hpp ..\include\zmq\ /V/S/E

