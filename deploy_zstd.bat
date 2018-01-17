echo off

xcopy zstd\lib\zstd.h ..\include\zstd\ /V/Y
xcopy zstd\build64\lib\Release ..\bin\x64\Release /V/S/E/Y
