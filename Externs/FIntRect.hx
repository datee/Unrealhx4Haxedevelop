package unreal;

@:uextern @:ustruct extern class FIntRect
{
	
}

/*

c++ API:

Variables
Name	Description
Public variable	FIntPoint  	Max	Holds the last pixel line/row (like in Win32 RECT).
Public variable	FIntPoint  	Min	Holds the first pixel line/row (like in Win32 RECT).
Constructors
Name	Description
Public function	FIntRect()
Constructor FIntRect inline functions
Public function	FIntRect
(
    FIntPoint InMin,
    FIntPoint InMax
)
Constructor
Public function	FIntRect
(
    int32 X0,
    int32 Y0,
    int32 X1,
    int32 Y1
)
Constructor
Functions
Name	Description
Public function	int32  	Area()
Calculates the area of this rectangle. The area of this rectangle.
Public function	FIntRect  	Bottom
(
    int32 InHeight
)
Creates a rectangle from the bottom part of this rectangle. The new rectangle.
Public function	void 	Clip
(
    const FIntRect & Other
)
Clip a rectangle using the bounds of another rectangle.
Public function	bool 	Contains
(
    FIntPoint Point
)
Test whether this rectangle contains a point.
Public function Static	FIntRect  	DivideAndRoundUp
(
    FIntRect lhs,
    int32 Div
)
Divides a rectangle and rounds up to the nearest integer. New divided rectangle.
Public function Static	FIntRect  	DivideAndRoundUp
(
    FIntRect lhs,
    FIntPoint Div
)
Public function	void 	GetCenterAndExtents
(
    FIntPoint & OutCenter,
    FIntPoint & OutExtent
)
Gets the Center and Extents of this rectangle.
Public function	int32  	Height()
Gets the Height of the rectangle. The Height of the rectangle.
Public function	void 	Include
(
    FIntPoint Point
)
Adds to this rectangle to include a given point.
Public function	void 	InflateRect
(
    int32 Amount
)
Inflates or deflates the rectangle.
Public function	FIntRect  	Inner
(
    FIntPoint Shrink
)
Gets a new rectangle from the inner of this one. New inner Rectangle.
Public function	bool 	IsEmpty()
Returns true if the rectangle is 0 x 0. true if the rectangle is 0 x 0.
Public function Static	int32  	Num()
Gets number of points in the Rectangle. Number of points in the Rectangle.
Public function	FIntRect  	Right
(
    int32 InWidth
)
Creates a rectangle from the right hand side of this rectangle. The new rectangle.
Public function	FIntRect  	Scale
(
    float Fraction
)
Scales a rectangle using a floating point number. New scaled rectangle.
Public function	FIntPoint  	Size()
Gets the distance from one corner of the rectangle to the other.
Public function	FString  	ToString()
Get a textual representation of this rectangle. A string describing the rectangle.
Public function	void 	Union
(
    const FIntRect & Other
)
Combines the two rectanges.
Public function	int32  	Width()
Gets the width of the rectangle. The width of the rectangle.
Operators
Name	Description
Public function	FIntRect  	operator-
(
    const FIntRect & Other
)
Gets the result of subtracting a rectangle from this one.
Public function	FIntRect  	operator-
(
    const FIntPoint & Point
)
Gets the result of subtracting a point from this rectangle.
Public function	bool 	operator!=
(
    const FIntRect & Other
)
Compares Rectangles for inequality. true if the rectangles are not equal, false otherwise..
Public function	FIntPoint & 	operator()
(
    int32 PointIndex
)
Gets a specific point in this rectangle. Reference to point in rectangle.
Public function	const FIntPo ... 	operator()
(
    int32 PointIndex
)
Gets a specific point in this rectangle. Const reference to point in rectangle.
Public function	FIntRect  	operator*
(
    int32 Scale
)
Gets the result of scaling on this rectangle. New scaled rectangle.
Public function	FIntRect & 	operator*=
(
    int32 Scale
)
Applies scaling to this rectangle. Reference to this rectangle after scaling.
Public function	FIntRect  	operator/
(
    const FIntPoint & Point
)
Gets the result of dividing a point with this rectangle. New rectangle with point divided.
Public function	FIntRect  	operator/
(
    int32 Div
)
Gets the result of division on this rectangle. New divided rectangle.
Public function	FIntRect  	operator+
(
    const FIntRect & Other
)
Gets the result of adding two rectangles together. New rectangle after both are added together.
Public function	FIntRect  	operator+
(
    const FIntPoint & Point
)
Gets the result of adding a point to this rectangle. New rectangle with point added to it.
Public function	FIntRect & 	operator+=
(
    const FIntPoint & Point
)
Adds a point to this rectangle. Reference to this rectangle after addition.
Public function	FIntRect & 	operator-=
(
    const FIntPoint & Point
)
Subtracts a point from this rectangle. Reference to this rectangle after subtraction.
Public function	bool 	operator==
(
    const FIntRect & Other
)
Compares Rectangles for equality. true if the rectangles are equal, false otherwise..
References
Module	Core
Header	Runtime/Core/Public/Math/IntRect.h

*/