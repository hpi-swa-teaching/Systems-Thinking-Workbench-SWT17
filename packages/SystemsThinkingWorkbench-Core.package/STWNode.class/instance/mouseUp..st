interaction
mouseUp: evt
"Creates connection when over a node"

	self draggedConnection ifNotNil: [
		self draggedConnection delete.
		self draggedConnection: nil.
		self owner nodes do: [:n | (n containsPoint: evt cursorPoint) 
				ifTrue: [n createConnectionFrom: self ofType: STWTransferConnection] ] 
			without: self.]
