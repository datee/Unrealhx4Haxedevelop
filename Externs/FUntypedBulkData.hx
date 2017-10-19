package unreal;

@:glueCppIncludes("Serialization/BulkData.h")
@:uextern @:ustruct @:noCopy @:noEquals extern class FUntypedBulkData
{
	public function Lock(LockFlags:UInt32):AnyPtr;
	public function Unlock() : Void;
}
