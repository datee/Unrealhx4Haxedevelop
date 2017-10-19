package unreal;

extern class UTexture2D_Extra
{
	public var PlatformData	: PPtr<FTexturePlatformData>;

	public static function CreateTransient(InSizeX:Int32, InSizeY:Int32, InFormat:EPixelFormat):POwnedPtr<UTexture2D>;
	public function GetSizeX() : Int32;
	public function GetSizeY() : Int32;
	
	/** @return Creates a new resource for the texture, and updates any cached references to the resource. */	
	public function UpdateResource():Void;

}
