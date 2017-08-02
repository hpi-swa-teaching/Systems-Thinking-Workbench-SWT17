interaction
addNodeAt: aPosition
	
	| node |
	
	node := STWNode new.
	self 
		addMorph: (node center: aPosition);
		addNode: node.
	^ node
