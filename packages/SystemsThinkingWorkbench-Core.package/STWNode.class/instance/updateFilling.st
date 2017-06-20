updating
updateFilling
	"Calculates the size of the circle representing filling state using a
	quadratic function.
	If the level falls below 0, the circle is hidden. If it rises to more than its
	width, the its set to its width.
	The size is set and the circle is centered in the node afterwards."
	
	| levelDiameter |
	
	self level > 0
		ifTrue: [levelDiameter := (self inverseNodeSize * 2 * self level / Float pi) sqrt clampHigh: self width - 2.
			self fillingMorph extent: levelDiameter @ levelDiameter;
				 show;
				 center: self center]
		ifFalse: [self fillingMorph hide].