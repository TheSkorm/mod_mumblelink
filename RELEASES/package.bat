@echo off

echo "Enter version number" 
set /p version=

IF NOT EXIST %version% GOTO NOTEXIST
echo "ERROR: Version already exists. Aborting"
pause
exit


:NOTEXIST

REM     init directories
mkdir "%version%"
mkdir "%version%\MumbleLink"
mkdir "%version%\MumbleLink\natives"


REM     get README
copy "README-template.txt" "%version%\MumbleLink\README.txt"


REM     get class file
copy "..\SOURCES\trunk\mod_MumbleLink\mcp\reobf\minecraft\*.class" "%version%\MumbleLink\"


REM     get native libraries
copy "..\SOURCES\trunk\mod_MumbleLinkDLL\build_linux32\*.so" "%version%\MumbleLink\natives"
copy "..\SOURCES\trunk\mod_MumbleLinkDLL\build_linux64\*.so" "%version%\MumbleLink\natives"

copy "..\SOURCES\trunk\mod_MumbleLinkDLL\build_osx32\*.dylib" "%version%\MumbleLink\natives"
copy "..\SOURCES\trunk\mod_MumbleLinkDLL\build_osx64\*.dylib" "%version%\MumbleLink\natives"

copy "..\SOURCES\trunk\mod_MumbleLinkDLL\build_WINx32\*.dll" "%version%\MumbleLink\natives"
copy "..\SOURCES\trunk\mod_MumbleLinkDLL\build_WINx64\*.dll" "%version%\MumbleLink\natives"


pause

