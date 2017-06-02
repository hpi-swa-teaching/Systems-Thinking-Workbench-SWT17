interaction
createTransferConnectionFrom: startingNode

	| connection |
	
	connection := (STWTransferConnection new) connect: startingNode with: self.
	self owner addMorph: connection.