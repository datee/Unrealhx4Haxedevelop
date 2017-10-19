@echo off

set BuildMethod=%1
set BuildConfig=%2
set ProjectName=%3
set ENGINE_PATH=%4

goto %BuildMethod%

:Cppia
haxe gen-build-script.hxml 
exit

:DevEditor
@for /f "delims=" %%F in ('dir %~dp0\..\..\*.uproject /b /o-n') do @set file=%%F
"%ENGINE_PATH%\Engine\Build\BatchFiles\Build.bat" %ProjectName%Editor Win64 Development %~dp0..\..\%file% -waitmutex
exit

:Rebuild
@for /f "delims=" %%F in ('dir %~dp0\..\..\*.uproject /b /o-n') do @set file=%%F
"%ENGINE_PATH%\Engine\Build\BatchFiles\ReBuild.bat" %ProjectName%Editor Win64 Development %~dp0..\..\%file% -waitmutex
exit
