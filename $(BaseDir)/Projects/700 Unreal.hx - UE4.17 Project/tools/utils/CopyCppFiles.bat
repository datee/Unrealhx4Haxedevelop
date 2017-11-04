for /f "delims=" %%F in ('dir %~dp0\..\..\*.uproject /b /o-n') do set file=%%~nF
xcopy "c:/dev/UnrealHX/Lib/shared/cpp" "../Source/%file%" /h/i/c/k/e/r/y
