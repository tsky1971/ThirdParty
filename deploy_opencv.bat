echo off

xcopy opencv\build64\install\include\opencv\*.h ..\include\opencv\ /V/S/E/Y
xcopy opencv\build64\install\include\opencv2\*.hpp ..\include\opencv2\ /V/S/E/Y
xcopy opencv\build64\install\include\opencv2\*.h ..\include\opencv2\ /V/S/E/Y
xcopy opencv\build64\install\x64\vc15\lib\*.lib ..\bin\x64\Release /V/S/E/Y
xcopy opencv\build64\install\x64\vc15\lib\*.pdb ..\bin\x64\Release /V/S/E/Y
xcopy opencv\build64\install\x64\vc15\lib\*.exp ..\bin\x64\Release /V/S/E/Y
xcopy opencv\build64\install\x64\vc15\bin\*.dll ..\bin\x64\Release /V/S/E/Y
xcopy opencv\build64\install\x64\vc15\bin\*.pdb ..\bin\x64\Release /V/S/E/Y
