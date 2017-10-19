package unreal;

@:glueCppIncludes("HAL/FileManager.h")
@:uextern @:noCopy @:noEquals extern class IFileManager
{
	public function ProcessCommandLineOptions():Void;	
}

/*

C++ API :

Public function	FString  	ConvertToAbsolutePathForExternalAppForRead
(
    const TCHAR * AbsolutePath
)
Converts passed in filename to use an absolute path (for reading) filename using absolute path
Public function	FString  	ConvertToAbsolutePathForExternalAppForWrite
(
    const TCHAR * AbsolutePath
)
Converts passed in filename to use an absolute path (for writing) filename using absolute path
Public function	FString  	ConvertToRelativePath
(
    const TCHAR * Filename
)
Converts passed in filename to use a relative path. filename using relative path
Public function	uint32  	Copy
(
    const TCHAR * Dest,
    const TCHAR * Src,
    bool Replace,
    bool EvenIfReadOnly,
    bool Attributes,
    FCopyProgress * Progress,
    EFileRead ReadFlags,
    EFileWrite WriteFlags
)
Copies a file.
Public function	FArchive ... 	CreateFileReader
(
    const TCHAR * Filename,
    uint32 ReadFlags
)
Creates file reader archive.
Public function	FArchive ... 	CreateFileWriter
(
    const TCHAR * Filename,
    uint32 WriteFlags
)
Creates file writer archive.
Public function	bool 	Delete
(
    const TCHAR * Filename,
    bool RequireExists,
    bool EvenReadOnly,
    bool Quiet
)
Deletes a file.
Public function	bool 	DeleteDirectory
(
    const TCHAR * Path,
    bool RequireExists,
    bool Tree
)
Deletes a directory.
Public function	bool 	DirectoryExists
(
    const TCHAR * InDirectory
)
Checks if a directory exists.
Public function	bool 	FileExists
(
    const TCHAR * Filename
)
Checks if a file exists
Public function	int64  	FileSize
(
    const TCHAR * Filename
)
Returns the size of a file.
Public function	void 	FindFiles
(
    TArray < FString >& FoundFiles,
    const TCHAR * Directory,
    const TCHAR * FileExtension
)
Finds all the files within the given directory, with optional file extension filter.
Public function	void 	FindFiles
(
    TArray < FString >& FileNames,
    const TCHAR * Filename,
    bool Files,
    bool Directories
)
Finds file or directories.
Public function	void 	FindFilesRecursive
(
    TArray < FString >& FileNames,
    const TCHAR * StartDirectory,
    const TCHAR * Filename,
    bool Files,
    bool Directories,
    bool bClearFileNames
)
Finds file or directories recursively.
Public function Static	IFileManager ... 	Get()
Singleton access, platform specific, also calls PreInit()
Public function	FDateTime  	GetAccessTimeStamp
(
    const TCHAR * Filename
)
The last access time of the given file (or FDateTime::MinValue() on failure)
Public function	double 	GetFileAgeSeconds
(
    const TCHAR * Filename
)
Gets the age of a file measured in seconds.
Public function	FString  	GetFilenameOnDisk
(
    const TCHAR * Filename
)
For case insensitive filesystems, returns the full path of the file with the same case as in the filesystem.
Public function	FFileStatDat ... 	GetStatData
(
    const TCHAR * FilenameOrDirecto...
)
Return the stat data for the given file or directory.
Public function	FDateTime  	GetTimeStamp
(
    const TCHAR * Path
)
The modification time of the given file (or FDateTime::MinValue() on failure)
Public function	void 	GetTimeStampPair
(
    const TCHAR * PathA,
    const TCHAR * PathB,
    FDateTime & OutTimeStampA,
    FDateTime & OutTimeStampB
)
The modification time of the given file (or FDateTime::MinValue() on failure)
Public function	bool 	IsReadOnly
(
    const TCHAR * Filename
)
If you're writing to a debug file, you should use CreateDebugFileWriter, and wrap the calling code in if ALLOW_DEBUG_FILES.
Public function	bool 	IsSandboxEnabled()
Returns whether the sandbox is enabled or not
Public function	bool 	IterateDirectory
(
    const TCHAR * Directory,
    IPlatformFile::FDirectoryVisitor & ...
)
Utility
Public function	bool 	IterateDirectoryRecursively
(
    const TCHAR * Directory,
    IPlatformFile::FDirectoryVisitor & ...
)
Call the Visit function of the visitor once for each file or directory in a directory tree.
Public function	bool 	IterateDirectoryStat
(
    const TCHAR * Directory,
    IPlatformFile::FDirectoryStatVisito ...
)
Call the Visit function of the visitor once for each file or directory in a single directory.
Public function	bool 	IterateDirectoryStatRecursively
(
    const TCHAR * Directory,
    IPlatformFile::FDirectoryStatVisito ...
)
Call the Visit function of the visitor once for each file or directory in a directory tree.
Public function	bool 	MakeDirectory
(
    const TCHAR * Path,
    bool Tree
)
Creates a directory.
Public function	bool 	Move
(
    const TCHAR * Dest,
    const TCHAR * Src,
    bool Replace,
    bool EvenIfReadOnly,
    bool Attributes,
    bool bDoNotRetryOrError
)
Utility
Public function	void 	ProcessCommandLineOptions()
Allow the file manager to handle the commandline
Public function	bool 	SendMessageToServer
(
    const TCHAR * Message,
    IPlatformFile::IFileServerMessageHa ...
)
Sends a message to the file server, and will block until it's complete.
Public function	void 	SetSandboxEnabled
(
    bool bInEnabled
)
Enables/disables the sandbox, if it is being used
Public function	bool 	SetTimeStamp
(
    const TCHAR * Path,
    FDateTime TimeStamp
)
Sets the modification time of the given file
References
Module	Core
Header	Runtime / Core / Public / HAL / FileManager.h

*/