interaction
addNodeAt: aPosition
"Adds a new Node at the given position and returns the new node"	
	| node |
	
	node := STWNode new.
	self addMorph: node centeredNear: aPosition.
	^ node.