package unreal;

extern class FInputModeGameAndUI_Extra
{
	private var bHideCursorDuringCapture		: Bool;
	private var MouseLockMode					: EMouseLockMode;
	private var WidgetToFocus					: TSharedPtr<SWidget>;

	public function SetHideCursorDuringCapture(InHideCursorDuringCaptur:Bool) 		: FInputModeGameAndUI;
	public function SetLockMouseToViewport(InLockMouseToViewport:Bool) 				: FInputModeGameAndUI;
	public function SetLockMouseToViewportBehavior(InMouseLockMode:EMouseLockMode) 	: FInputModeGameAndUI;	
	
}
