initialization
extentChanged: aPoint
	"Updates all important labels of the node when extent is changed."

	| verticalOffset |

	verticalOffset := 0 @ (self height / 4).
	self fillingMorph ifNotNil: [self updateFilling].
	self levelMorph ifNotNil: [self levelMorph offset: verticalOffset; updatePositionFromOwnerCenter].
	self nameMorph ifNotNil: [self nameMorph offset: 0 - verticalOffset; updatePositionFromOwnerCenter].
	self changed: #position.
	super extentChanged: aPoint.