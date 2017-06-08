simulation
redraw

	fullBounds 
		ifNil:[self invalidRect: self outerBounds]
		ifNotNil:[self invalidRect: fullBounds].
	World displayWorldSafely.