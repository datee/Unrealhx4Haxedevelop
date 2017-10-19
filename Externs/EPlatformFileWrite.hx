package unreal;

@:glueCppIncludes("GenericPlatform/GenericPlatformFile.h")
@:uname("EPlatformFileWrite")
@:class @:uextern extern enum EPlatformFileWrite
{
	None;
	AllowRead; //Wrong info in the UE Docs - says AllowWrite.. Great..
}

