package unreal;

@:glueCppIncludes("GenericPlatform/GenericPlatformFile.h")
@:uname("FDirectoryVisitor")
@:uextern @:noCopy @:noEquals extern class FDirectoryVisitor
{
	/**
	 * Callback for a single file or a directory in a directory iteration.
	**/
	function Visit(FilenameOrDirectory:TCharStar, bIsDirectory:Bool):Bool;
} 
