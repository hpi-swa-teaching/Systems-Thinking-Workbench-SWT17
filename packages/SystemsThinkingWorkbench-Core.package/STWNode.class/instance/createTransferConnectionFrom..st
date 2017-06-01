interaction
createTransferConnectionFrom: startingNode

	| connection |
	
	connection := (STWTransferConnection new)
					connect: startingNode with: self;
					input: 1;
					output: 1.
	self owner addMorph: connection.