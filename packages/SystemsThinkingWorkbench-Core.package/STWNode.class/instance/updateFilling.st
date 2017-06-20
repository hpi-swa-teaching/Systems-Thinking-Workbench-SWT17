updating
updateFilling
	"Calculates the size of the circle representing filling state using a quadratic function.
	If the level falls below 0, the circle is hidden. If it rises to more than its width, the its set to its width.
	The size is set and the circle is centered in the node afterwards."
	
	| diameter |
	
	self level <= 0
		ifTrue: [self fillingMorph hide]
		ifFalse: [self level > self width
				ifTrue: [diameter := self width]
				ifFalse: [diameter := (self level * self width) sqrt].
			self fillingMorph extent: diameter @ diameter;
				 show;
				 center: self center]