package unreal;

@:glueCppIncludes("CPPHelperUtils.h")
@:uextern @:noCopy @:noEquals extern class UCPPHelperUtils
{
	public static function GetGameDir():FString;
	public static function CopyTextureData(textureData:AnyPtr, uncompressedBGRA:Ref<PPtr<Const<TArray<UInt8>>>>):Void;
} 

