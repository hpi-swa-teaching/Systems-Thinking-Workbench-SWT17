interaction
mouseDown: evt 
	"Draws an arrow from first clicked node to the second clicked node"
	self owner firstClicked
		ifNotNilDo: [:node | node = self
				"if I am the first clicked node, i got clicked twice"
				"TODO: timestamp for doubleClick"
				ifTrue: [self doubleClick]
				ifFalse: [self addArrowFrom: node.
					self owner firstClicked: nil]]
		ifNil: [self owner firstClicked: self]