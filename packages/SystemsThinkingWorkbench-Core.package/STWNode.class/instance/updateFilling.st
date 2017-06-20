geometry
updateFilling
	"Calculates the size of the circle representing filling state by using a
	logistic function.
	If the level is below 0, the circle is hidden.
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