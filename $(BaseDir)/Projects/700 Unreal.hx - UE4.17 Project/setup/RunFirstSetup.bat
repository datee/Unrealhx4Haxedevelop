:: //////////////////////////////////////////////////////////////////////////////////////

@echo off
call tools\Setup.bat
call tools\tasks\BuildUtils.bat

:: =======================================================================================
:: Unzip Unreal.hx plugin ////////////////////////////////////////////////////////////////

@setup\7za.exe x -oPlugins -y setup\Unrealhx.zip
cd Plugins
ren Unreal.hx UnrealHx
cd ..

:: =======================================================================================
:: Unzip Extra externs ///////////////////////////////////////////////////////////////////

@setup\7za.exe x -oPlugins\UnrealHx\Haxe\Externs\Common\unreal -y setup\Externs.zip

:: //////////////////////////////////////////////////////////////////////////////////////

:: =======================================================================================
:: Generate projectfiles /////////////////////////////////////////////////////////////////

@setup\uvs.exe /projectfiles ..\%PROJECT_FILENAME%

:: =======================================================================================
:: Cleanup ///////////////////////////////////////////////////////////////////////////////

del noINIT
del setup\7za.exe
del setup\fart.exe
del setup\Externs.zip
del setup\Unrealhx.zip
del setup\uvs.exe

:: =======================================================================================
:: Build project /////////////////////////////////////////////////////////////////////////

@"%ENGINE_PATH%\Engine\Build\BatchFiles\Build.bat" %PROJECT_NAME%%EDITOR_BUILD_CONFIG% %EDITOR_BUILD_PLATFORM% %EDITOR_BUILD_TARGET% %PROJECT_FILE% -waitmutex

:: //////////////////////////////////////////////////////////////////////////////////////

del setup /s
rmdir setup

