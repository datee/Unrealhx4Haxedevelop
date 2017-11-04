:: //////////////////////////////////////////////////////////////////////////////////////

@echo off
set PAUSE_ERRORS=1

:: //////////////////////////////////////////////////////////////////////////////////////

@FOR /F "tokens=2*" %%A IN ('reg query "HKLM\SOFTWARE\EpicGames\Unreal Engine\4.17" /v "InstalledDirectory" /reg:64') do @set ENGINE_PATH=%%B
if "%ENGINE_PATH%"=="" (
  echo Unable to detect Unreal Engine engine folder automaticly. Please specify the path in "tools\Setup.bat"
  echo Stopping.
  @pause
  @exit
)
::echo Found Unreal Engine at : %ENGINE_PATH%

:: //////////////////////////////////////////////////////////////////////////////////////

@for /f "delims=" %%P in ('dir "%~dp0\..\..\*.uproject" /b /o-n') do @set PROJECT_FILENAME=%%P
@for /f "delims=" %%F in ('dir "%~dp0\..\..\*.uproject" /b /o-n') do @set PROJECT_NAME=%%~nF
@for /f "delims=" %%F in ('dir "%~dp0\..\..\*.uproject" /b /o-n') do @set PROJECT_FILE=%~dp0..\..\%PROJECT_FILENAME%
@for /f "delims=" %%F in ('dir "%~dp0\..\..\*.uproject" /b /o-n') do @set PROJECT_DIR=%~dp0..\..\

:: //////////////////////////////////////////////////////////////////////////////////////

if "%EDITOR_USE_PAK_FILES%" == "true" set EDITOR_PAK=-pak
if "%PACKAGING_USE_PAK_FILES%" == "true" set PACKGAGE_PAK=-pak

if "%EDITOR_USE_PAK_FILES%" == "false" set EDITOR_PAK=
if "%PACKAGING_USE_PAK_FILES%" == "false" set PACKGAGE_PAK=

:: //////////////////////////////////////////////////////////////////////////////////////