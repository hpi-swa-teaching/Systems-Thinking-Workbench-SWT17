geometry
updateFilling
	
	|zeroOffset steepness level diameter|	

	steepness := 0.15.
	zeroOffset := 35.
	self level < 0 ifTrue: [level := 0] ifFalse: [level := self level].
	diameter := (1 / (1 + (steepness negated * (level - zeroOffset)) exp)) sqrt * (self width - 1).
	self fillingMorph extent: diameter@diameter.
	self fillingMorph center: self center.