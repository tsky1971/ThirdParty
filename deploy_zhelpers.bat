echo off
if not exist ..\include\zhelpers\ (
	mkdir ..\include\zhelpers\
)
xcopy zhelpers\*.* ..\include\ /V/S/E/Y

