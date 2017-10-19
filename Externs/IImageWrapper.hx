package unreal;

typedef IImageWrapperPtr = TSharedPtr<IImageWrapper>;

@:glueCppIncludes("Interfaces/IImageWrapper.h")
@:uextern @:noCopy @:noEquals extern class IImageWrapper
{
	/**
		Gets the bit depth of the image The bit depth per-channel of the image
	**/
	public function GetBitDepth():Int32;
	
	/**
		Gets the compressed data. Array of the compressed data
	**/
	public function GetCompressed(quality:Int32):Const<PRef<TArray<UInt8>>>;
	
	/**
		Gets the raw data. Array of the raw data
	**/
	public function GetRaw(InFormat:Const<ERGBFormat>,InBitDepth:Int32,OutRaw:Ref<PPtr<Const<TArray<UInt8>>>>):Bool;
	
	/**
		Gets the width of the image. Image width.
	**/
	public function GetWidth():Int32;
	
	/**
		Gets the height of the image. Image height.
	**/
	public function GetHeight():Int32;

	/**
		Sets the compressed data. true if data was the expected format
	**/
	public function SetCompressed(InCompressedData:Const<AnyPtr>,InCompressedSize:Int32):Bool;
	
	/**
		Sets the compressed data. true if data was the expected format
	**/
	public function SetRaw(InRawData:Const<AnyPtr>,InRawSize:Int32,InWidth:Const<Int32>,InHeight:Const<Int32>,InFormat:Const<ERGBFormat>,InBitDepth:Int32):Bool;

	
}
