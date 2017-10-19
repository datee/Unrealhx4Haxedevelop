package unreal;

@:uextern @:ustruct extern class FFileStatData
{
	/**
	 * The time that the file or directory was last accessed, or FDateTime::MinValue if the access time is unknown
	**/
	public var AccessTime			: FDateTime;

	/**
	 * True if this data is for a directory, false if it's for a file
	**/
	public var bIsDirectory			: Bool;

	/**
	 * True if this file is read-only
	**/
	public var bIsReadOnly			: Bool;

	/**
	 * True if file or directory was found, false otherwise.
	**/
	public var bIsValid				: Bool;

	/**
	 * The time that the file or directory was originally created, or FDateTime::MinValue if the creation time is unknown
	**/
	public var CreationTime			: FDateTime;

	/**
	 * Size of the file (in bytes), or -1 if the file size is unknown
	**/
	public var FileSize				: Int64;

	/**
	 * The time the the file or directory was last modified, or FDateTime::MinValue if the modification time is unknown
	**/
	public var ModificationTime		: FDateTime;

}