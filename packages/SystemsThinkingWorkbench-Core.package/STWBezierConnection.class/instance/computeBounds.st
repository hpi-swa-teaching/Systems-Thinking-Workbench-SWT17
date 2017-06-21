as yet unclassified
computeBounds
	
	^ ((segment bounds encompass: (self arrowPointAt: 135 length: 10)) encompass: (self arrowPointAt: -135 length: 10)) expandBy: 2