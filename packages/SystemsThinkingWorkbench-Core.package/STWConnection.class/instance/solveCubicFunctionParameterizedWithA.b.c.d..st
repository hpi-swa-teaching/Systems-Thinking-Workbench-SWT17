mathematical functions
solveCubicFunctionParameterizedWithA: a b: b c: c d: d

	| p q r x1 x2 x3 s |

	p := 0 - (b / (3 * a)).
	q := (p raisedTo: 3) + ((b * c - (3 * a * d)) / (6 * a squared)).
	r := c / (3 * a).
	s := ((q squared + ((r - p squared) raisedTo: 3)) sqrt).
	
	x1 := ((q + s) nthRoot: 3) + ((q - s) nthRoot: 3) + p.
	x2 := ((q + s) nthRoot: 3) + ((q + s) nthRoot: 3) + p.
	x3 := ((q - s) nthRoot: 3) + ((q - s) nthRoot: 3) + p.
	
	"THERE CAN ONLY BE ONE! Because the derivative of a quadratic is linear."
	(x1 between: 0 and: 1) ifTrue: [^x1].
	(x2 between: 0 and: 1) ifTrue: [^x2].
	(x3 between: 0 and: 1) ifTrue: [^x3].

	^nil