package unreal;
import unreal.slatecore.ESlateBrushImageType;
import unreal.slatecore.ESlateBrushTileType;

//@:glueCppIncludes("SlateDynamicImageBrush.h")
@:uextern @:ustruct @:noCopy @:noEquals extern class FSlateDynamicImageBrush
{
	//@:overload(function(InStartPos:Const<PRef<FVector2D>>,InEndPos:Const<PRef<FVector2D>>):FSlateRect{})
	
	@:uname('new')
	public static function createNew(InTexture:PPtr<UTexture2D>,InImageSize:PRef<FVector2D>,InTextureName:FName,InTint:PRef<FLinearColor>,InTiling:ESlateBrushTileType,InImageT:ESlateBrushImageType) : POwnedPtr<FSlateDynamicImageBrush>;
}
