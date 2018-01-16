echo off

xcopy SDL\include ..\include\SDL\ /V/S/E/Y
xcopy SDL\build64\Release ..\bin\x64\Release /V/S/E/Y
