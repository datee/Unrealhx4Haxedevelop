package unreal;

@:glueCppIncludes("Misc/FileHelper.h")
@:uname("EEncodingOptions.Type")
@:uextern @:class @:uenum extern enum EEncodingOptions
{
    AutoDetect;
    ForceAnsi;
    ForceUnicode;
    ForceUTF8;
    ForceUTF8WithoutBOM;
}
