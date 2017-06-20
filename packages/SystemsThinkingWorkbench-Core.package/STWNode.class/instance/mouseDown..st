interaction
mouseDown: evt
	"Draws an arrow from first clicked node to the second clicked node."

	"self owner firstClicked
		ifNotNilDo: [ :node | 
			node = self 
				ifTrue: [self owner firstClicked: nil]
				ifFalse: [self createConnectionFrom: node ofType: STWTransferConnection.
						self owner firstClicked: nil.]]
		ifNil: [self owner firstClicked: self]."
	
	"(self owner okToPickUp: self)" 
	 evt hand
		waitForClicksOrDrag: self
		event: evt
		selectors: {#click:. #doubleClick:. #firstClickTimedOut:. nil}
		threshold: 5.
