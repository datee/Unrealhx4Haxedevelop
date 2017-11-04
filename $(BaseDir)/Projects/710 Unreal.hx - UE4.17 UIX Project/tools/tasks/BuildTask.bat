:: //////////////////////////////////////////////////////////////////////////////////////

@echo off
call tools\Setup.bat
call tools\tasks\BuildUtils.bat

:: //////////////////////////////////////////////////////////////////////////////////////

set BuildMethod=%1
set BuildConfig=%2
set ProjectName=%3

if exist noINIT (
    call setup\RunFirstSetup.bat
    @exit
)

goto %BuildMethod%

:: //////////////////////////////////////////////////////////////////////////////////////

:CppiaCompile
haxe haxe\gen-build-script.hxml 
exit

:: //////////////////////////////////////////////////////////////////////////////////////

:BuildUE4Project
"%ENGINE_PATH%\Engine\Build\BatchFiles\Build.bat" %PROJECT_NAME%%EDITOR_BUILD_CONFIG% %EDITOR_BUILD_PLATFORM% %EDITOR_BUILD_TARGET% %PROJECT_FILE% -waitmutex
exit

:: //////////////////////////////////////////////////////////////////////////////////////

:RebuildUE4Project
"%ENGINE_PATH%\Engine\Build\BatchFiles\ReBuild.bat" %PROJECT_NAME%%EDITOR_BUILD_CONFIG% %EDITOR_BUILD_PLATFORM% %EDITOR_BUILD_TARGET% %PROJECT_FILE% -waitmutex
exit

:: //////////////////////////////////////////////////////////////////////////////////////

:PackageUE4Project
"%ENGINE_PATH%\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project=%PROJECT_FILE% -noP4 -platform=%PACKAGING_BUILD_PLATFORM% -clientconfig=%PACKAGING_BUILD_TARGET% -serverconfig=%PACKAGING_BUILD_TARGET% -cook -allmaps -build -stage %PACKGAGE_PAK% -archive -archivedirectory=%PACKAGE_DIR%
exit

:: //////////////////////////////////////////////////////////////////////////////////////

:CookUE4Content
"%ENGINE_PATH%\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project=%PROJECT_FILE% -noP4 -platform=%PACKAGING_BUILD_PLATFORM% -clientconfig=%PACKAGING_BUILD_TARGET% -serverconfig=%PACKAGING_BUILD_TARGET% -cook -allmaps -NoCompile -stage %PACKGAGE_PAK% -archive -archivedirectory=%PACKAGE_DIR%
exit

:: //////////////////////////////////////////////////////////////////////////////////////
