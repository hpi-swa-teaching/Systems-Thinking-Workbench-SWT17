mathematical functions
distanceFromBezier: aPoint
	
	| M P0 P1 P2 A B a b c d M2 result point |
	
	M := aPoint.
	P0 := self segment start.
	P1 := self segment via.
	P2 := self segment end.
	
	A := P1 - P0.
	B := (P2 - P1) - A.
	M2 := P0 - M.
	
	a := B dotProduct: B.
	b := 3 * (A dotProduct: B).
	c := (2 * (A dotProduct: A)) + (M2 dotProduct: B).
	d := M2 dotProduct: A.
	
	result := self solveCubicFunctionParameterizedWithA: a b: b c: c d: d.
	
	point := (self segment valueAt: result).
	^point dist: M.
