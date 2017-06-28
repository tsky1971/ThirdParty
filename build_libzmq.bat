:: if libsodium is on disk, the Windows build of libzmq will automatically use it
git clone git://github.com/zeromq/libzmq.git
cd libzmq\builds\msvc
cd build
CALL buildbase.bat ..\vs2017\libzmq.sln 15
CALL buildbase.bat ..\vs2015\libzmq.sln 14
::buildall.bat
cd ..\..\..\..
xcopy libzmq\bin\Win32\Debug\v140\dynamic\*.* ..\bin\Win32\Debug\ /V/S/E
xcopy libzmq\bin\Win32\Release\v140\dynamic\*.* ..\bin\Win32\Release\ /V/S/E
xcopy libzmq\bin\x64\Debug\v140\dynamic\*.* ..\bin\x64\Debug\ /V/S/E
xcopy libzmq\bin\x64\Release\v140\dynamic\*.* ..\bin\x64\Release\ /V/S/E