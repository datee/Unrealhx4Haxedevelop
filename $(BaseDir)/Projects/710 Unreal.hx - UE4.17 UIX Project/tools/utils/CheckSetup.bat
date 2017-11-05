:: //////////////////////////////////////////////////////////////////////////////////////

@echo off
call ..\Setup.bat
call ..\tasks\BuildUtils.bat

:: //////////////////////////////////////////////////////////////////////////////////////
echo.
echo ENGINE_PATH                : "%ENGINE_PATH%"
echo PACKAGE_DIR                : "%PACKAGE_DIR%"
echo PROJECT_FILENAME           : "%PROJECT_FILENAME%"
echo PROJECT_NAME               : "%PROJECT_NAME%"
echo PROJECT_FILE               : "%PROJECT_FILE%"
echo PROJECT_DIR                : "%PROJECT_DIR%"
echo.
echo EDITOR_BUILD_CONFIG        : "%EDITOR_BUILD_CONFIG%"
echo EDITOR_BUILD_TARGET        : "%EDITOR_BUILD_TARGET%"
echo EDITOR_BUILD_PLATFORM      : "%EDITOR_BUILD_PLATFORM%"
echo EDITOR_USE_PAK_FILES       : "%EDITOR_USE_PAK_FILES%"
echo EDITOR_PAK                 : "%EDITOR_PAK%"
echo.
echo PACKAGING_BUILD_CONFIG     : "%PACKAGING_BUILD_CONFIG%"
echo PACKAGING_BUILD_TARGET     : "%PACKAGING_BUILD_TARGET%"
echo PACKAGING_BUILD_PLATFORM   : "%PACKAGING_BUILD_PLATFORM%"
echo PACKAGING_USE_PAK_FILES    : "%PACKAGING_USE_PAK_FILES%"
echo PACKGAGE_PAK               : "%PACKGAGE_PAK%"
echo.
@pause

