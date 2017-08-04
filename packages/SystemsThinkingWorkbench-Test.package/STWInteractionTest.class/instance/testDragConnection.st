testing
testDragConnection
	"Tests if a connection can be created via drag and drop."

	| node1 node2 simulation hand event waited |
	
	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 100@100.
	node2 := simulation addNodeAt: 500@100.
	"Create a mock event and hand which handle dragging"
	waited := false.
	hand := STWMock handOnWait: [:morph :evt |
		self assert: node1 == morph.
		waited := true.].
	event := STWMock mouseAt: node1 center withHand: hand.
	
	node1 mouseDown: event.
	node1 startDrag: event.
	self assert: waited.
	node1 mouseUp: (STWMock mouseAt: 0@0).
	self assert: simulation connections isEmpty.

	waited := false.
	node1 mouseDown: event.
	node1 startDrag: event.
	self assert: waited.
	node1 mouseUp: (STWMock mouseAt: node2 center).
	self deny: simulation connections isEmpty.
	self assert: node1 equals: simulation connections first startNode.
	self assert: node2 equals: simulation connections first endNode.
