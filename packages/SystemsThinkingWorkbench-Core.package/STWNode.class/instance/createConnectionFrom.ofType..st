interaction
createConnectionFrom: startingNode ofType: aSymbol

	| connection classType |
	
	(aSymbol == #transfer) ifTrue: [classType := STWTransferConnection].
	
	classType ifNotNil: [
				connection := (classType new) connect: startingNode with: self.
				self owner addMorph: connection].
			
	self owner addConnection: connection.