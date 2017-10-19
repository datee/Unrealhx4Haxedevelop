package unreal;

@:uextern @:ustruct extern class FGenericPlatformMisc
{
	/**
	 * Returns true if the platform allows network traffic for anonymous end user usage data
	**/
	static public function AllowSendAnonymousGameUsageDataToEpic() : Bool;

	/**
	 * Copies text to the operating system clipboard.
	**/
	static public function ClipboardCopy(Str:Const<TCharStar>) : Void;

	/**
	 * Pastes in text from the operating system clipboard.
	**/
	static public function ClipboardPaste(Dest:PRef<FString>) : Void;

	/**
	 * Pastes in text from the operating system clipboard.
	**/
	//static public function ControlScreensaver(Action:EScreenSaverAction) : Bool;

	/**
	 * Get the engine directory
	**/
	static public function EngineDir() : Const<TCharStar>;

	/**
	 * Get the engine directory
	**/
	static public function GameDir() : Const<TCharStar>;

	/**
	 * Return the GameDir
	**/
	static public function GamePersistentDownloadDir() : Const<TCharStar>;

	/**
	 * Show a message box if possible, otherwise print a message and return the default
	**/
	static public function MessageBoxExt(MsgType:EAppMsgType, text:Const<TCharStar>, Caption:Const<TCharStar>) : EAppReturnType;

	/**
	 * Requests application exit.
	**/
	static public function RequestExit(Force:Bool) : Void;
	
	/**
	 * Requests application exit with a specified return code.
	**/
	static public function RequestExitWithStatus(Force:Bool, ReturnCode:UInt8) : Void;

	/**
	 * Request application to minimize (goto background).
	**/
	static public function RequestMinimize() : Void;
	
}

