interaction
createConnectionFrom: startingNode

	| connection |
	
	connection := STWConnection new.
	connection connect: startingNode with: self.
	self owner addMorph: connection.