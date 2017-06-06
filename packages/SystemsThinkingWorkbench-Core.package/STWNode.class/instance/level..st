accessing
level: aNumber 

	aNumber isNumber
		ifTrue: [self levelMorph contents: aNumber asString;
				 updatePositionFromOwnerCenter].