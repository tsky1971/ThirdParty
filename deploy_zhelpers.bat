echo off
if not exist ..\include\zhelpers\ (
	mkdir ..\include\zhelpers\
)
xcopy zhelpers\*.* ..\include\zhelpers\ /V/S/E/Y

