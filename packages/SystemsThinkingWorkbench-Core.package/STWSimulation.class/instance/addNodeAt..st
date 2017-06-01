interaction
addNodeAt: aPosition
	
	| node |
	
	node := STWNode new.
	self addMorph: (node center: aPosition).
	^ node