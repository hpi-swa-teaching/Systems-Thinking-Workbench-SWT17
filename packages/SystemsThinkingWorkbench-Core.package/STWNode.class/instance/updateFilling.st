geometry
updateFilling
	"Calculates size of the circle representing filling state by using a logistic function. If the level is below 0, the circle's radius is 0. The size is set and the circle is centered in the node afterwards."
	|zeroOffset steepness level diameter|	

	steepness := 0.15.
	zeroOffset := 35.
	self level < 0 ifTrue: [level := 0] ifFalse: [level := self level].
	diameter := (1 / (1 + (steepness negated * (level - zeroOffset)) exp)) sqrt * (self width - 1).
	self fillingMorph extent: diameter@diameter.
	self fillingMorph center: self center.