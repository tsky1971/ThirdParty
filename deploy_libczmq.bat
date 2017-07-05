echo off
xcopy czmq\bin\Win32\Debug\v140\dynamic\*.* ..\bin\Win32\Debug\ /V/S/E
xcopy czmq\bin\Win32\Release\v140\dynamic\*.* ..\bin\Win32\Release\ /V/S/E
xcopy czmq\bin\x64\Debug\v140\dynamic\*.* ..\bin\x64\Debug\ /V/S/E
xcopy czmq\bin\x64\Release\v140\dynamic\*.* ..\bin\x64\Release\ /V/S/E