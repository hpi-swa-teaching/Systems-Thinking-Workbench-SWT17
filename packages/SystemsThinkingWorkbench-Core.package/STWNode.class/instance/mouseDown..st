interaction
mouseDown: evt 
	"Draws an arrow from first clicked node to the second clicked node."
	
	self owner firstClicked
		ifNotNilDo: [:node | node = self
				ifTrue: [self owner firstClicked: nil]
				ifFalse: [self createConnectionFrom: node.
					self owner firstClicked: nil]]
		ifNil: [self owner firstClicked: self].