updating
updateFilling
	"Calculates the size of the circle representing filling state using a quadratic function.
	The width is clamped to 0 and node width.
	The size is set and the circle is centered in the node afterwards."
	
	| calculatedDiameter levelDiameter |
	
	self level > 0
		ifTrue: 
			[calculatedDiameter := (2 * self level / (self density * Float pi)) sqrt.
			levelDiameter := (((calculatedDiameter clampHigh: self width - STWSimulation normalLineWidth) / 2) rounded * 2) clampLow: 2.
			self fillingMorph 
				extent: levelDiameter asPoint;
				show;
				center: self center.]
		ifFalse: [self fillingMorph hide].
	self fillingMorph borderWidth: ((self borderWidth - ((self width - self fillingMorph width) / 2)) clampLow: 0).
