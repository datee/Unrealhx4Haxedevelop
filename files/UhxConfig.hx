 class UhxConfig
 {
	public static function getConfig(data:UhxBuildData, config:UhxBuildConfig)
	{
		//config.extraStaticClasspaths = ['C:/dev/UnrealHx/Lib/shared/haxe/Static'];    
		//config.extraScriptClasspaths = ['C:/dev/UnrealHx/Lib/shared/haxe/Scripts'];    
		trace('Extra static build path:',config.extraStaticClasspaths);
		trace('Extra script build path:',config.extraScriptClasspaths);
		return config;
	}
}
