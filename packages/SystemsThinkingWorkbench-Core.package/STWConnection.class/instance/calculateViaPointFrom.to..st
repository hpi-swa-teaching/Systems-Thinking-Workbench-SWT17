geometry
calculateViaPointFrom: start to: end

	| normed |
	
	"Prevent zero divide"
	end = start ifTrue: [^ start].
	
	normed := (end - start) normalized.
	^ (start interpolateTo: end at: 0.5) + ((normed rotateBy: 90 degreesToRadians about: 0@0) * (end - start) r / 5)
