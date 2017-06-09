interaction
createConnectionFrom: startingNode ofType: anSTWConnectionClass

	| connection |
	
	connection := (anSTWConnectionClass new) connect: startingNode with: self.
	self owner addMorph: connection.
  self owner addConnection: connection.
