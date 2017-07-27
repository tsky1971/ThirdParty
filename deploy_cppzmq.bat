echo off
if not exist ..\include\zmq\ (
	mkdir ..\include\zmq\
) else (

)

xcopy cppzmq\*.hpp ..\include\zmq\ /V/S/E

