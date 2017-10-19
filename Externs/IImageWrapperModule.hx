package unreal;
import unreal.IImageWrapper.IImageWrapperPtr;

@:glueCppIncludes("Interfaces/IImageWrapperModule.h")
@:uextern @:noCopy @:noEquals extern class IImageWrapperModule
{
	public function CreateImageWrapper(InFormat:Const<EImageFormat>):IImageWrapperPtr;
	//public function DetectImageFormat(InCompressedData:Const<Ptr<Void>>, InCompressedSize:Int32):EImageFormat;
	public function DetectImageFormat(InCompressedData:Const<AnyPtr>, InCompressedSize:Int32):EImageFormat;
	//public function DetectImageFormat(InCompressedData:ConstAnyPtr, InCompressedSize:Int32):EImageFormat;
	
}
