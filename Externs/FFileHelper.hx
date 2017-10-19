package unreal;

@:uextern @:ustruct extern class FFileHelper
{
	/**
		Load a text file to an FString .
	**/
	//public static function BufferToString(Result:PRef<FString>, Buffer:Const<PPtr<UInt8>>, Size:Int32):Void;
	
	/**
		Saves a 24/32Bit BMP file to disk
	**/
	public static function CreateBitmap(Pattern:Const<TCharStar>, DataWidth:Int32, DataHeight:Int32, Data:Const<PPtr<FColor>>, SubRectangle:PPtr<FIntRect>, FileManager:PPtr<IFileManager>, OutFilename:PPtr<FString>, bInWriteAlpha:Bool):Bool;
	
	/**
		Generates the next unique bitmap filename with a specified extension true if success
	**/
	public static function GenerateNextBitmapFilename(Pattern:Const<TCharStar>, Extension:Const<TCharStar>, OutFilename:PRef<FString>, FileManager:PPtr<IFileManager>):Bool;
	
	/**
		Load the given ANSI text file to an array of strings - one FString per line of the file.
	**/
	public static function LoadANSITextFileToStrings(InFilename:Const<PPtr<TCharStar>>, InFileManager:PPtr<IFileManager>, OutStrings:PRef<TArray<FString>>):Bool;
	
	/**
		Load a binary file to a dynamic array.
	**/
	public static function LoadFileToArray(Result:PRef<TArray<UInt8>>, Filename:Const<TCharStar>, Flags:UInt32):Bool;
	
	/**
		Load the given ANSI text file to an array of strings - one FString per line of the file.
	**/
	public static function LoadFileToString(Result:PRef<FString>, Filename:Const<TCharStar>, VerifyFlags:UInt32):Bool;
	
	/**
		Save a binary array to a file.
	**/
	//public static function SaveArrayToFile(Array:TArrayView <const uint8>, Filename:Const<TCharStar>, FileManager:PPtr<IFileManager>, WriteFlags:UInt32>):Bool;
	
	/**
		Write the FString to a file.
	**/
	//public static function SaveStringToFile(String:Const<PRef<FString>>, Filename:Const<TCharStar>, EncodingOptions:EEncodingOptions, FileManager:Ptr<IFileManager>, WriteFlags:UInt32):Bool;

	
} 

