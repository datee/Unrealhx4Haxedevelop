package unreal;

extern class IPlatformFile_Extra
{
	/**
	 * Identifies any platform specific paths that are guaranteed to be local (i.e. cache, scratch space)
	**/
	function AddLocalDirectories(LocalDirectories:PRef<TArray<FString>>):Void;

	/**
	**/
	function BypassSecurity(bInBypass:Bool):Void;
	
	/**
	 * Converts passed in filename to use an absolute path (for reading).
	**/
	function ConvertToAbsolutePathForExternalAppForRead(filename:TCharStar):FString;
	
	/**
	 * Converts passed in filename to use an absolute path (for writing) filename using absolute path
	**/
	function ConvertToAbsolutePathForExternalAppForWrite(filename:TCharStar):FString;
	
	/**
	 * Copy a file or a hierarchy of files (directory). true if operation completed successfully.
	**/
	function CopyDirectoryTree(DestinationDirectory:TCharStar,Source:TCharStar,bOverwriteAllExisting:Bool):Bool;
	
	/**
	 * Copy a file.
	**/
	function CopyFile(To:TCharStar,From:TCharStar,ReadFlags:EPlatformFileRead,WriteFlags:EPlatformFileWrite):Bool;
	
	/**
	 * Create a directory and return true if the directory was created or already existed.
	**/
	function CreateDirectory(Directory:TCharStar):Bool;	
	
	/**
	 * Create a directory, including any parent directories and return true if the directory was created or already existed.
	**/
	function CreateDirectoryTree(Directory:TCharStar):Bool;
	
	/**
	 * Delete a directory and return true if the directory was deleted or otherwise does not exist.
	**/
	function DeleteDirectory(Directory:TCharStar):Bool;
	
	/**
	 * Delete all files and subdirectories in a directory, then delete the directory itself
	**/
	function DeleteDirectoryRecursively(Directory:TCharStar):Bool;
	
	/**
	 * Delete a file and return true if the file exists. Will not delete read only files.
	**/
	function DeleteFile(Filename:TCharStar):Bool;
	
	/**
	 * Return the last access time of a file.
	**/
	function GetAccessTimeStamp(Filename:TCharStar):FDateTime;
	
	/**
	 * For case insensitive filesystems, returns the full path of the file with the same case as in the filesystem
	**/
	function GetFilenameOnDisk(Filename:TCharStar):FString;
	
	/**
	 * Gets the platform file wrapped by this file.
	**/
	function GetLowerLevel():POwnedPtr<IPlatformFile>;

	/**
	 * Returns the name of the physical platform file type.
	**/
	static function GetPhysicalTypeName():TCharStar;
	
	/**
	 * Gets the platform file wrapped by this file.
	**/
	function GetStatData(FilenameOrDirectory:TCharStar):FFileStatData;
	
	/**
	 * Return the modification time of a file.
	**/
	function GetTimeStamp(Filename:TCharStar):FDateTime;
	
	/**
	 * Return the modification time of a file in the local time of the calling code (GetTimeStamp returns UTC).
	**/
	function GetTimeStampLocal(Filename:TCharStar):FDateTime;
	
	/**
	 *  
	**/
	function GetTimeStampPair(PathA:TCharStar,PathB:TCharStar,OutTimeStampA:PRef<FDateTime>,OutTimeStampB:PRef<FDateTime>):Void;
	
	/**
	 * Initializes platform file. true if the initialization was successful, false otherise.
	**/
	function Initialize(Inner:PPtr<IPlatformFile>,CmdLine:TCharStar):Bool;
	
	/**
	 * Performs initialization of the platform file after it has become the active (FPlatformFileManager.GetPlatformFile() will return this
	**/
	function InitializeAfterSetActive():Void;
	
	/**
	 * Performs initialization of the platform file after the new async IO has been enabled
	**/
	function InitializeNewAsyncIO():Void;
	
	/**
	 * Return true if the file is read only.
	**/
	function IsReadOnly(Filename:TCharStar):Bool;
	
	/**
	 * Returns whether the sandbox is enabled or not bool true if enabled, false if not
	**/
	function IsSandboxEnabled():Bool;
	
	/**
	 * Call the Visit function of the visitor once for each file or directory in a single directory.
	**/
	//function IterateDirectory(Directory:TCharStar,Visitor:PRef<FDirectoryVisitor>):Bool;
	
	/**
	 * Call the Visit function of the visitor once for each file or directory in a directory tree.
	**/
	//function IterateDirectoryRecursively(Directory:TCharStar,Visitor:PRef<FDirectoryVisitor>):Bool;
	
	/**
	 * Call the Visit function of the visitor once for each file or directory in a single directory.
	**/
	//function IterateDirectoryStat(Directory:TCharStar,Visitor:PRef<FDirectoryStatVisitor>):Bool;
		
	/**
	 * Call the Visit function of the visitor once for each file or directory in a directory tree.
	**/
	//function IterateDirectoryStatRecursively(Directory:TCharStar,Visitor:PRef<FDirectoryStatVisitor>):Bool;
	
	/**
	 * Attempt to move a file. Return true if successful. Will not overwrite existing files.
	**/
	function MoveFile(To:TCharStar,From:TCharStar):Bool;
	
	/**
	 * Open a file for async reading.
	**/
	//function OpenAsyncRead(filename:TCharStar):POwnedPtr<IAsyncReadFileHandle>;
	
	/**
	 * 
	**/
	function OpenReadNoBuffering(filename:TCharStar, allowWrite:Bool):POwnedPtr<IFileHandle>;
	
	/**
	 * Sends a message to the file server, and will block until it's complete.
	**/
	//function SendMessageToServer(Message:TCharStar,Handler:PPtr<IFileServerMessageHandler>):Bool;
	
	/**
	 * Sets the platform file wrapped by this file.
	**/
	function SetLowerLevel(NewLowerLevel:PPtr<IPlatformFile>):Void;
		
	/**
	 * Attempt to change the read only status of a file. Return true if successful.
	**/
	function SetReadOnly(Filename:TCharStar,bNewReadOnlyValue:Bool):Void;
		
	/**
	 * Set whether the sandbox is enabled or not
	**/
	function SetSandboxEnabled(bInEnabled:Bool):Void;
	
	/**
	 * Sets the modification time of a file
	**/
	function SetTimeStamp(Filename:TCharStar,DateTime:FDateTime):Void;
	
	/**
	 * Checks if this platform file should be used even though it was not asked to be.
	**/
	function ShouldBeUsed(Inner:PPtr<IPlatformFile>,CmdLine:TCharStar):Void;
	
}


