package unreal;

extern class UGameViewportClient_Extra
{
	/**
		Returns access to this viewport's Slate window
	 *
	**/	
	public var Viewport : PPtr<FViewport>;

	/**
		Retrieve the size of the main viewport
	 *
	**/	
	public function GetViewportSize(ViewportSize:PRef<FVector2D>) : Void;
	
	/**
		Returns access to this viewport's Slate window
	 *
	**/	
	public function GetWindow() : TSharedPtr<SWindow>;
	

}