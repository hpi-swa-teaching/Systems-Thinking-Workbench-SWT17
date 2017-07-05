updating
updateFilling
	"Calculates the size of the circle representing filling state using a quadratic function.
	The width is clamped to 0 and node width.
	The size is set and the circle is centered in the node afterwards."
	
	| levelDiameter |
	levelDiameter := (((self density * 2 * self level / Float pi) sqrt clampHigh: self width - 2) / 2) rounded * 2.
	levelDiameter > 0
		ifTrue: [.
			self fillingMorph extent: levelDiameter @ levelDiameter;
				 show;
				 center: self center]
		ifFalse: [self fillingMorph hide].
	self fillingMorph borderWidth: ((self borderWidth - ((self width - self fillingMorph width) / 2)) clampLow: 0).
