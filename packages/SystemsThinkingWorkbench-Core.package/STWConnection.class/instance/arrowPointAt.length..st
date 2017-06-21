geometry
arrowPointAt: angle length: length

	| t v |
	
	self segment hasZeroLength ifTrue: [^ self segment start].
	
	t := (self segment tangentAt: 1) normalized * length.
	v := self segment valueAt: 1.
	^ v + (t rotateBy: (angle degreesToRadians) about: 0@0) rounded
