C:/dev/UnrealHx/Setup/tools/fart.exe -r "*.uproject" "]" "],\"Plugins\":[{\"Name\": \"UnrealHx\",\"Enabled\": true}]"
C:/dev/UnrealHx/Setup/tools/fart.exe -r "*.Build.cs" ": ModuleRules" ": HaxeModuleRules"
C:/dev/UnrealHx/Setup/tools/fart.exe -r "*.Build.cs" "		// PrivateDependencyModuleNames.AddRange(new string[] { \"Slate\", \"SlateCore\" });" " 		PrivateDependencyModuleNames.AddRange(new string[] { \"UMG\", \"Slate\", \"SlateCore\", \"Http\" });"

xcopy "c:/dev/UnrealHX/Setup/Plugins" "Plugins" /h/i/c/k/e/r/y
xcopy "c:/dev/UnrealHX/Setup/Externs" "Plugins/UnrealHx/Haxe/Externs/Common/unreal" /h/i/c/k/e/r/y
xcopy "c:/dev/UnrealHX/Setup/Haxe" "Haxe" /h/i/c/k/e/r/y
xcopy "c:/dev/UnrealHX/Setup/files" "*.*" /h/i/c/k/e/r/y

@for /f "delims=|" %%f in ('dir /B /S *.uproject') do set ffile=%%~nf
ren Haxe\project.hxproj %ffile%.hxproj

for /f "delims=" %%F in ('dir %~dp0\..\..\*.uproject /b /o-n') do set file=%%~nF
xcopy "c:/dev/UnrealHX/Lib/shared/cpp" "../../Source/%file%" /h/i/c/k/e/r/y
