:: //////////////////////////////////////////////////////////////////////////////////////

@echo off
call ..\..\Setup.bat
call ..\..\tasks\BuildUtils.bat

:: //////////////////////////////////////////////////////////////////////////////////////

@echo on
"%ENGINE_PATH%\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project=%PROJECT_FILE% -noP4 -platform=%PACKAGING_BUILD_PLATFORM% -clientconfig=%PACKAGING_BUILD_TARGET% -serverconfig=%PACKAGING_BUILD_TARGET% -cook -allmaps -NoCompile -stage %PACKGAGE_PAK% -archive -archivedirectory=%PACKAGE_DIR%
pause
:: //////////////////////////////////////////////////////////////////////////////////////
