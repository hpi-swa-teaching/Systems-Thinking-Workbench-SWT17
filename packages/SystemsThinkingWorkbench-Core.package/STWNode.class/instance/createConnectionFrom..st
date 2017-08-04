interaction
createConnectionFrom: startingNode

	| connection |
	
	"Prevent duplicate connections."
	(self owner containsConnectionFrom: startingNode to: self) 
		ifTrue: [^ self].
	
	connection := (STWConnection new) connect: startingNode with: self.
	self owner 
		addMorphBack: connection;
		addConnection: connection.
	^ connection
