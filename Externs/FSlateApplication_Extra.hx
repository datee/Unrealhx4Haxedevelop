package unreal;

extern class FSlateApplication_Extra
{
	//public var LastComputedBounds		: FSlateRect;

	public function SetUserFocus(UserIndex:FakeUInt32,WidgetToFocus:Const<PRef<TSharedPtr<SWidget>>>,ReasonFocusIsChanging:EFocusCause) : Bool;
	public function SetUserFocusToGameViewport(UserIndex:FakeUInt32,ReasonFocusIsChanging:EFocusCause) : Void;
}

