package unreal;
import unreal.slate.FInputChord;

@:glueCppIncludes('Components/InputComponent.h')
@:uextern extern class FInputKeyBinding
{
	/**
	 * Input Chord to bind to
     */
	public var Chord : FInputChord;

	/**
	 * The delegate bound to the key chord
	 */
	public var KeyDelegate : FInputActionUnifiedDelegate;

}