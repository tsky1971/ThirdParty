git clone git://github.com/zeromq/czmq.git
::cd czmq\builds\msvc
::configure.bat --without-zmakecert --disable-drafts --without-zsp --without-czmq_selftest
cd czmq\builds\msvc\vs2015
call build.bat
cd ..\..\..\..
xcopy czmq\bin\Win32\Debug\v140\dynamic\*.* ..\bin\Win32\Debug\ /V/S/E
xcopy czmq\bin\Win32\Release\v140\dynamic\*.* ..\bin\Win32\Release\ /V/S/E
xcopy czmq\bin\x64\Debug\v140\dynamic\*.* ..\bin\x64\Debug\ /V/S/E
xcopy czmq\bin\x64\Release\v140\dynamic\*.* ..\bin\x64\Release\ /V/S/E