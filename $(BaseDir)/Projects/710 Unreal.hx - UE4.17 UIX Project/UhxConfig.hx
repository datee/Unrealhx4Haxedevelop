 class UhxConfig
 {
	public static function getConfig(data:UhxBuildData, config:UhxBuildConfig)
	{
		config.extraStaticClasspaths = ['c:/dev/UnrealHx/Lib/shared/haxe/Static'];    
		config.extraScriptClasspaths = ['c:/dev/UnrealHx/Lib/shared/haxe/Scripts'];    
		trace('External extra static build path:',config.extraStaticClasspaths);
		trace('External extra script build path:',config.extraScriptClasspaths);
		return config;
	}
}
