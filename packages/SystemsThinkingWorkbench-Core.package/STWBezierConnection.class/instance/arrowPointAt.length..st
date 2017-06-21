as yet unclassified
arrowPointAt: angle length: length

	| t v |
	
	t := (segment tangentAt: 1) normalized * length.
	v := segment valueAt: 1.
	^ v + (t rotateBy: (angle degreesToRadians) about: 0@0) rounded