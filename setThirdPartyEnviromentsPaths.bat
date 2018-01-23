:: set enviroment dir with ThirdParty Path
echo off

for %%i in ("%~dp0..") do set "PARENTDIR=%%~fi"
echo %PARENTDIR%

SET CURRENTDIR=%~dp0

echo %PARENTDIR%
echo %CURRENTDIR%

SET INCLUDE=%PARENTDIR%\include

SET BIN_RELEASE=%PARENTDIR%\bin\x64\Release
SET BIN_DEBUG=%PARENTDIR%\bin\x64\Debug
SET LIB_RELEASE=%PARENTDIR%\bin\x64\Release
SET LIB_DEBUG=%PARENTDIR%\bin\x64\Debug

echo "ThirdParty include " %INCLUDE%
echo "ThirdParty bin_release " %BIN_RELEASE%
echo "ThirdParty bin_debug " %BIN_DEBUG%
echo "ThirdParty lib_release " %LIB_RELEASE%
echo "ThirdParty lib_debug " %LIB_DEBUG%

if not exist %INCLUDE% (
	mkdir %INCLUDE%
)

if not exist %BIN_RELEASE% (
	mkdir %BIN_RELEASE%
)

if not exist %BIN_DEBUG% (
	mkdir %BIN_DEBUG%
)

setx THIRDPARTY_INCLUDE %INCLUDE% 

setx THIRDPARTY_BIN %BIN_RELEASE% 

setx THIRDPARTY_LIB %BIN_RELEASE%

setx THIRDPARTY_BIN_RELEASE %BIN_RELEASE%
setx THIRDPARTY_LIB_RELEASE %BIN_RELEASE%

setx THIRDPARTY_BIN_DEBUG %BIN_DEBUG%
setx THIRDPARTY_LIB_DEBUG %BIN_DEBUG%

echo %PATH% > path.txt

echo "set path"
setx PATH "%THIRDPARTY_BIN;%%PATH%;"

pause