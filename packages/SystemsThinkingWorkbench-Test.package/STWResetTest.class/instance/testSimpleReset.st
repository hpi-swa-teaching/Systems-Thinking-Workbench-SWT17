testing
testSimpleReset

	|simulation node1 node2 node3 connection1|
	
	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 0@0.
	node2 := simulation addNodeAt: 50@0.
	
	connection1 := STWConnection new.
	connection1 connect: node1 with: node2.
	simulation addConnection: connection1.
	simulation addMorph: connection1.
	
	simulation startSimulation.
	
	self assert: (simulation resetState contains: [:element | element = node1]).
	self assert: (simulation resetState contains: [:element | element = node2]).
	self assert: (simulation resetState contains: [:element | element = connection1]).
	
	simulation stepSimulation.
	
	node3 := simulation addNodeAt: 50@50.
	
	simulation resetSimulation.
	
	self assert: (simulation resetState contains: [:element | element = node1]).
	self assert: (simulation resetState contains: [:element | element = node2]).
	self assert: (simulation resetState contains: [:element | element = connection1]).
