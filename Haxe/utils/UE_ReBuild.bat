set ENGINE_PATH=C:\UnrealEngine\Engines\UE_4.17

@for /f "delims=" %%P in ('dir %~dp0\..\..\*.uproject /b /o-n') do @set fileProj=%%P
@for /f "delims=" %%F in ('dir %~dp0\..\..\*.uproject /b /o-n') do @set file=%%~nF
"%ENGINE_PATH%\Engine\Build\BatchFiles\ReBuild.bat" %file%Editor Win64 Development %~dp0..\..\%fileProj% -waitmutex
