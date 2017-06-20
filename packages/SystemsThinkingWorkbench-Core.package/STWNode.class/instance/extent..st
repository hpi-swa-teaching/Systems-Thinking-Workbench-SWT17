accessing
extent: aPoint 

	| tempCenter size |
	
	size := aPoint x min: aPoint y.
	size < 42
		ifFalse: [tempCenter := self center.
			super extent: aPoint.
			self center: tempCenter]