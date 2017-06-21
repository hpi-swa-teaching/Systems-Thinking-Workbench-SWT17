as yet unclassified
from: start to: end

	| normed x |
	
	normed := (end - start) normalized.
	x := (start interpolateTo: end at: 0.5) + ((normed rotateBy: 90 degreesToRadians about: 0@0) * (end - start) r / 5).
	self from: start to: end via: x.
	
	