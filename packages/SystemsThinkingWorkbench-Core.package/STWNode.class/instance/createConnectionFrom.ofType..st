interaction
createConnectionFrom: startingNode ofType: anSTWConnectionClass

	| connection |
	
	"Prevent duplicate connections"
	(self owner containsConnectionFrom: startingNode to: self) ifTrue: [^ self].
	
	connection := (anSTWConnectionClass new) connect: startingNode with: self.
	self owner addMorphBack: connection;
		addConnection: connection.
		
	^ connection
