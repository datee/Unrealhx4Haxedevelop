@for /f "delims=" %%F in ('dir %~dp0\..\..\*.uproject /b /o-n') do @set file=%%F

cd ..\..\
start %file%