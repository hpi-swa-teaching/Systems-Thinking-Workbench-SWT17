construction
addHandles
	"This is an example for handles."

	| box |
	
	box := Rectangle center: self center extent: (self height)@(self width).
	
	self
		removeAllMorphs;
		bounds: target renderedMorph worldBoundsForHalo;  "update my size"
		layoutChanged;
		changed.
	
	target addHandlesTo: self box: box.
	growingOrRotating := false.
