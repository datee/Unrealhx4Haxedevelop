package unreal;

import unreal.*;

extern class FModuleManager_Extra
{
	//public function LoadModuleChecked(InModuleName:Const<FName>, ?bWasReloaded:Const<Bool> = false):TSharedPtr<IModuleInterface>;
	
	@:typeName
	static public function LoadModuleChecked<T>(ModuleName:Const<FName>):PRef<T>;
	
}
