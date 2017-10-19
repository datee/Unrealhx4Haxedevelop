package unreal;

@:glueCppIncludes("GenericPlatform/GenericPlatformFile.h")
@:uname("FDirectoryStatVisitor")
@:uextern @:noCopy @:noEquals extern class FDirectoryStatVisitor
{
	/**
	 * Callback for a single file or a directory in a directory iteration.
	**/
	function Visit(FilenameOrDirectory:TCharStar, StatData:Const<PRef<FFileStatData>>):Bool;
} 
