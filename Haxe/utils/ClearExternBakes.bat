for /f "delims=" %%F in ('dir %~dp0\..\..\*.uproject /b /o-n') do set file=%%~nF
cd "../../Intermediate/Haxe/%file%-Win-Development-Editor/Data"
del /s /q "*.deps"
