echo off
xcopy libsodium\bin\Win32\Debug\v140\dynamic\*.* ..\bin\Win32\Debug\ /V/S/E/Y
xcopy libsodium\bin\Win32\Release\v140\dynamic\*.* ..\bin\Win32\Release\ /V/S/E/Y
xcopy libsodium\bin\x64\Debug\v140\dynamic\*.* ..\bin\x64\Debug\ /V/S/E/Y
xcopy libsodium\bin\x64\Release\v140\dynamic\*.* ..\bin\x64\Release\ /V/S/E/Y

xcopy libsodium\src\libsodium\include\*.h ..\include\ /V/E/S/Y
