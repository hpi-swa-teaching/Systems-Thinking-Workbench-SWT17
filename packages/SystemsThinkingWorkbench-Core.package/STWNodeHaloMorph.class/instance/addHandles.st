construction
addHandles
	"This is an example for handles."

	self
		removeAllMorphs;
		bounds: target renderedMorph worldBoundsForHalo;  "update my size"
		layoutChanged;
		changed.
	target addHandlesTo: self box: (Rectangle center: self center extent: (self height)@(self width)).
	growingOrRotating := false.
