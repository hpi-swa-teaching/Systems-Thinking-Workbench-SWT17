construction
addHandles

	self
		removeAllMorphs;
		bounds: self target renderedMorph worldBoundsForHalo;
		layoutChanged;
		changed.
	self target addHandlesTo: self box: (self center rect: self height@self width).
