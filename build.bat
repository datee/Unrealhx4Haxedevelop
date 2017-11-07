@echo OFF
cd "$(BaseDir)\Projects\700 Unreal.hx - UE4.17 Project\setup"
del Unrealhx.zip
cd ..\..\..\..\
7za.exe -tzip a "$(BaseDir)/Projects/700 Unreal.hx - UE4.17 Project/setup/Unrealhx.zip" Unreal.hx
del Unrealhx-template.fdz
7za.exe -tzip a Unrealhx-template.fdz $(BaseDir)
pause