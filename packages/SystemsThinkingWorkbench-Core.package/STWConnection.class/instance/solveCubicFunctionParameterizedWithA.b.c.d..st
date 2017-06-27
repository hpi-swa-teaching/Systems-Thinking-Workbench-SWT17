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
			
	x1 >= 0 ifTrue: [x1 <= 1 ifTrue: [^x1]]
		ifFalse: [
			x2 >= 0 ifTrue: [x2 <= 1 ifTrue: [^x2]]
				ifFalse: [
					x3 >= 0 ifTrue: [x3 <= 1 ifTrue: [^x3]]
					]].
	^nil