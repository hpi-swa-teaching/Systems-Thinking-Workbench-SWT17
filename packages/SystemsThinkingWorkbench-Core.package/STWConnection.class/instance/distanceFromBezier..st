mathematical functions
distanceFromBezier: clickPoint
	
	| startPoint viaPoint endPoint startTangent relativeEndTangent a b c d relativeClickPoint result point |
	
	startPoint := self segment start.
	viaPoint := self segment via.
	endPoint := self segment end.
	startTangent := viaPoint - startPoint.
	relativeEndTangent := (endPoint - viaPoint) - startTangent.
	relativeClickPoint := startPoint - clickPoint.
	
	"f(x) = ax^3 + bx^2 + cx + d"
	a := relativeEndTangent dotProduct: relativeEndTangent.
	b := 3 * (startTangent dotProduct: relativeEndTangent).
	c := (2 * (startTangent dotProduct: startTangent)) + (relativeClickPoint dotProduct: relativeEndTangent).
	d := relativeClickPoint dotProduct: startTangent.
	
	result := self solveCubicFunctionParameterizedWithA: a b: b c: c d: d.
	result ifNil: [^ 0].
	point := (self segment valueAt: result).
	^ point dist: clickPoint
