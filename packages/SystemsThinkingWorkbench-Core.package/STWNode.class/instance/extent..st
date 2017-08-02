accessing
extent: aPoint 

	| tempCenter size |
	
	size := aPoint x min: aPoint y.
	size < STWNode minimumSize 
		ifFalse: 
			[tempCenter := self center.
			super extent: aPoint.
			self center: tempCenter.
			self radiusChanged: size.].
