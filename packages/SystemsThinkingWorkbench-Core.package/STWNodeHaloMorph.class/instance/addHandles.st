construction
addHandles
	"This is an example for handles."

	| box |
	

	self removeAllMorphs.
	self bounds: target renderedMorph worldBoundsForHalo.  "update my size"
	box := Rectangle center: self center extent: (self height)@(self width) .

	target addHandlesTo: self box: box.

	self addName.
	growingOrRotating := false.
	self layoutChanged.
	self changed.
