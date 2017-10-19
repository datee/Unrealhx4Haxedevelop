package unreal;

@:glueCppIncludes("GenericPlatform/GenericPlatformFile.h")
@:uname("IFileServerMessageHandler")
@:uextern @:noCopy @:noEquals extern class IFileServerMessageHandler
{
	/**
	 * Subclass fills out an archive to send to the server
	**/
	function FillPayload(Payload:PRef<FArchive>):Void;	

	/**
	 * Subclass pulls data response from the server
	**/
	function ProcessResponse(Response:PRef<FArchive>):Void;	
}
