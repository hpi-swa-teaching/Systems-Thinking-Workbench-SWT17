geometry
arrowPointAt: angle length: length

	| tangent |
	
	self segment hasZeroLength
		ifTrue: [^ self segment start].
	tangent := (self segment tangentAt: 1) normalized * length.
	^ self segment end + (tangent rotateBy: (angle degreesToRadians) about: 0@0) rounded
