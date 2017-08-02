geometry
arrowPointAt: angle length: length

	| tangent endPoint |
	
	self segment hasZeroLength
		ifTrue: [^ self segment start].
	
	tangent := (self segment tangentAt: 1) normalized * length.
	endPoint := self segment valueAt: 1.
	^ endPoint + (tangent rotateBy: (angle degreesToRadians) about: 0@0) rounded
