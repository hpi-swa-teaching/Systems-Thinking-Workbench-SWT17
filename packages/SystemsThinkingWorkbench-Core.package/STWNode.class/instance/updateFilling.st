geometry
updateFilling
	
	|zeroOffset steepness diameter|	

	steepness := 0.15.
	zeroOffset := 30.
	diameter := (1 / (1 + (steepness negated * (self level - zeroOffset)) exp)) * self width.
	self fillingMorph extent: diameter@diameter.
	self fillingMorph center: self center.