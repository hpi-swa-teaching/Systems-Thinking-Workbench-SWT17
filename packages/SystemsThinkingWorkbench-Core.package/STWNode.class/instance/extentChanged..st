initialization
extentChanged: aPoint

	| verticalOffset |

	self fillingMorph ifNotNil: [self updateFilling].
	verticalOffset := 0 @ (self height / 4).
	self levelMorph ifNotNil: [self levelMorph offset: verticalOffset; updatePositionFromOwnerCenter].
	self nameMorph ifNotNil: [self nameMorph offset: 0 - verticalOffset; updatePositionFromOwnerCenter].
	self changed: #position.
	super extentChanged: aPoint.