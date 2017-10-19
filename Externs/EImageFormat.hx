package unreal;

@:glueCppIncludes("Interfaces/IImageWrapper.h")
@:uname("EImageFormat.Type")
@:uextern @:class extern enum EImageFormat
{
	Invalid;
	PNG;
	JPEG;
	GrayscaleJPEG;
	BMP;
	ICO;
	EXR;
	ICNS;
}

