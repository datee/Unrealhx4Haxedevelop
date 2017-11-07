for /f "delims=" %%F in ('dir %~dp0\..\..\*.uproject /b /o-n') do set file=%%~nF
xcopy "...your source dir..." "../Source/%file%" /h/i/c/k/e/r/y
