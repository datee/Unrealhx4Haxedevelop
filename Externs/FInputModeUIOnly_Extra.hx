package unreal;

extern class FInputModeUIOnly_Extra
{
	private var MouseLockMode					: EMouseLockMode;
	private var WidgetToFocus					: TSharedPtr<SWidget>;

	public function SetLockMouseToViewport(InLockMouseToViewport:Bool) 				: FInputModeUIOnly;
	public function SetLockMouseToViewportBehavior(InMouseLockMode:EMouseLockMode) 	: FInputModeUIOnly;
}
