updating
radiusChanged: aPoint
	"Updates all important labels of the node when extent is changed."

	| verticalOffset |

	verticalOffset := 0 @ (aPoint x / 4).
	self capacity ifNotNil:  [self density: 2 * self capacity / (aPoint x squared * Float pi).].
	self fillingMorph ifNotNil: [self updateFilling].
	self levelMorph ifNotNil: [self levelMorph offset: verticalOffset; updatePositionFromOwnerCenter].
	self nameMorph ifNotNil: [self nameMorph offset: 0 - verticalOffset; updatePositionFromOwnerCenter].
	self changed: #bounds.
