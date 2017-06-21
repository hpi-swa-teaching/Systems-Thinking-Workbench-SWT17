geometry
lineSegmentsDo: aBlock

	self segment lineSegments: self segment length / self pixelsPerSegment do: aBlock.
