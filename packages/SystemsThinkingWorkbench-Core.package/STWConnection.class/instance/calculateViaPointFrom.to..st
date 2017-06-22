geometry
calculateViaPointFrom: start to: end

	| normVector |
	
	"Prevent zero divide"
	end = start ifTrue: [^ start].
	
	normVector := (end - start) normalized.
	^ (start interpolateTo: end at: 0.5) + ((normVector rotateBy: 90 degreesToRadians about: 0@0) * (end - start) r / 5)
