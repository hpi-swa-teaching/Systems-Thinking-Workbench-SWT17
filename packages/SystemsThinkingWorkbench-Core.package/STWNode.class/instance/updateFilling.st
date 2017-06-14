geometry
updateFilling
	"Calculates size of the circle representing filling state by using a logistic function.
	If the level is below 0, the circle is hidden.
	The size is set and the circle is centered in the node afterwards."
	
	| diameter |	

	self level <= 0 ifTrue: [self fillingMorph hide]
					ifFalse: [diameter := (1 / (1 + (STWNode fillingFunctionSteepness negated * (self level - STWNode fillingFunctionMiddle)) exp)) sqrt * (self width - 1).
					self fillingMorph extent: diameter@diameter;
									show;
									center: self center].