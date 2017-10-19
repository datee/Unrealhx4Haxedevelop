package unreal;
import unreal.slatecore.FMargin;

@:glueCppIncludes("SlateRect.h")
@:uextern @:noCopy @:noEquals extern class FSlateRect
{
	public var Bottom			: Float32;
	public var Left				: Float32;
	public var Right			: Float32;
	public var Top				: Float32;
	
	@:uname('.ctor')
	@:overload(function(InStartPos:Const<PRef<FVector2D>>,InEndPos:Const<PRef<FVector2D>>):FSlateRect{})
	public static function create(InLeft:Float32,InTop:Float32,InRight:Float32,InBottom:Float32) : FSlateRect;

	@:uname('new')
	@:overload(function(InStartPos:Const<PRef<FVector2D>>,InEndPos:Const<PRef<FVector2D>>):FSlateRect{})
	public static function createNew(InLeft:Float32,InTop:Float32,InRight:Float32,InBottom:Float32) : POwnedPtr<FSlateRect>;
	
	/** @return Returns whether or not a point is inside the rectangle True if the point is inside the rectangle */
	public function ContainsPoint(Point:Const<PRef<FVector2D>>) : Bool;
	
	/** @return Do rectangles A and B intersect? */
	public function DoRectanglesIntersect(A:Const<PRef<FSlateRect>>, B:Const<PRef<FSlateRect>>) : Bool;
	
	/** @return Returns the rect that encompasses both rectangles */
	public function Expand(Other:Const<PRef<FSlateRect>>) : FSlateRect;
	
	/** @return Return a rectangle that is extended on each side by the amount specified in each margin. */
	public function ExtendBy(ExtendAmount:Const<PRef<FMargin>>) : FSlateRect;
	
	/** @return Creates a rect from a top left point and extent. */
	public function FromPointAndExtent(TopLeft:Const<PRef<FVector2D>>, Size:Const<PRef<FVector2D>>) : Bool;
	
	/** @return Returns the bottom-left position of the rectangle The bottom-left position. */
	public function GetBottomLeft() : FVector2D;
	
	/** @return Returns the bottom-right position of the rectangle The bottom-right position. */
	public function GetBottomRight() : FVector2D;
	
	/** @return Returns the center of the rectangle The center point. */
	public function GetCenter() : FVector2D;
	
	/** @return Returns the size of the rectangle. The size as a vector. */
	public function GetSize() : FVector2D;
	
	/** @return Returns the top-left position of the rectangle The top-left position. */
	public function GetTopLeft() : FVector2D;
	
	/** @return Returns the top-right position of the rectangle The top-right position. */
	public function GetTopRight() : FVector2D;
	
	/** @return Returns a string of containing the coordinates of the rect True if initialized successfully */
	public function InitFromString(InSourceString:Const<PRef<FString>>) : Bool;
	
	/** @return Return a rectangle that is contracted on each side by the amount specified in each margin. */
	public function InsetBy(InsetAmount:Const<PRef<FMargin>>) : FSlateRect;
	
	/** @return Returns the rectangle that is the intersection of this rectangle and Other. */
	/** @return Returns the rectangle that is the intersection of this rectangle and Other, as well as if they were overlapping at all. */
	@:overload(function(Other:Const<PRef<FSlateRect>>):FSlateRect{})
	public function IntersectionWith(Other:Const<PRef<FSlateRect>>, OutOverlapping:PRef<Bool>) : FSlateRect;
	
	/** @return True, if the rectangle has a size of 0. */
	public function IsEmpty() : Bool;
	
	/** @return Is rectangle B contained within rectangle A? */
	public function IsRectangleContained(A:Const<PRef<FSlateRect>>, B:Const<PRef<FSlateRect>>) : Bool;
	
	/** @return Determines if the rectangle has positive dimensions. */
	public function IsValid() : Bool;
	
	/** @return Return a rectangle that is offset by the amount specified . An offset rectangle. */
	public function OffsetBy(OffsetAmount:Const<PRef<FVector2D>>) : FSlateRect;

	/** @return Returns a string of containing the coordinates of the rect A string of the rect coordinates */
	public function ToString() : FString;
}
