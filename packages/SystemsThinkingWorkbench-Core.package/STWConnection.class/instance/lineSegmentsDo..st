geometry
lineSegmentsDo: aBlock

	self segment lineSegments: self segment length / STWConnection pixelsPerSegment do: aBlock.
