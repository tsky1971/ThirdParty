git clone --depth 1 -b stable https://github.com/jedisct1/libsodium.git
pushd libsodium\builds\msvc\build
rem buildall.bat
CALL buildbase.bat ..\vs2017\libsodium.sln 15
CALL buildbase.bat ..\vs2015\libsodium.sln 14
::cd ..\..\..\..
popd
xcopy libsodium\bin\Win32\Debug\v140\dynamic\*.* ..\bin\Win32\Debug\ /V/S/E
xcopy libsodium\bin\Win32\Release\v140\dynamic\*.* ..\bin\Win32\Release\ /V/S/E
xcopy libsodium\bin\x64\Debug\v140\dynamic\*.* ..\bin\x64\Debug\ /V/S/E
xcopy libsodium\bin\x64\Release\v140\dynamic\*.* ..\bin\x64\Release\ /V/S/E