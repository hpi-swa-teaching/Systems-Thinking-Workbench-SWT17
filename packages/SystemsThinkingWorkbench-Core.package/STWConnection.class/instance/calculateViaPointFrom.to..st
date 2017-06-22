geometry
calculateViaPointFrom: start to: end

	| vector |
	
	vector := (end - start).
	^ (start interpolateTo: end at: 0.5) + ((vector rotateBy: 90 degreesToRadians about: 0@0) / 5)
