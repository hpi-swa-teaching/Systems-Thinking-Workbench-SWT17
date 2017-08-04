testing
testMouseMove
	"Tests if the simulation correctly highlights nodes and connections."

	| node1 node2 connection simulation |
	
	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 100@100.
	node2 := simulation addNodeAt: 500@100.
	connection := node2 createConnectionFrom: node1.
	
  	simulation mouseMove: (STWMock cursorAt: 0@0).
	self assert: STWSimulation normalLineWidth equals: node1 borderWidth.
	self assert: STWSimulation normalLineWidth equals: node2 borderWidth.
	self assert: STWSimulation normalLineWidth equals: connection lineWidth.
	
	simulation mouseMove: (STWMock cursorAt: node1 center).
	self assert: STWSimulation hoverLineWidth equals: node1 borderWidth.
	self assert: STWSimulation normalLineWidth equals: node2 borderWidth.
	self assert: STWSimulation normalLineWidth equals: connection lineWidth.
	
	simulation mouseMove: (STWMock cursorAt: (connection position + (connection segment valueAt: 0.5))).
	self assert: STWSimulation normalLineWidth equals: node1 borderWidth.
	self assert: STWSimulation normalLineWidth equals: node2 borderWidth.
	self assert: STWSimulation hoverLineWidth equals: connection lineWidth.
