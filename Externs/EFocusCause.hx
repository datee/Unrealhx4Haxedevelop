package unreal;

@:glueCppIncludes("Input/Events.h")
@:uname("EFocusCause")
@:uextern @:class extern enum EFocusCause
{
    Mouse;
    Navigation;
    SetDirectly;
    Cleared;
    OtherWidgetLostFocus;
    WindowActivate;	
}