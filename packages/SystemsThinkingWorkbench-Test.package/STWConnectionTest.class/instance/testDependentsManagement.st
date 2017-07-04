testing
testDependentsManagement
	"Tests if a connection is adde."

	| node1 node2 connection1 connection2 simulation |
	
	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 50@0.
	node2 :=  simulation addNodeAt: 50@50.
	connection1 := STWConnection new.
	connection2 := STWConnection new.
	
	connection1 connect: node1 with: node2.
	connection2 connect: node2 with: node1.
	
	simulation 
		addConnection: connection1;
		addConnection: connection2;
		addMorph: connection1;
		addMorph: connection2.
	
	
	self assert: (node1 dependents includes: connection1).
	self assert: (node1 dependents includes: connection2).
	self assert: (node2 dependents includes: connection1).
	self assert: (node2 dependents includes: connection2).
	connection1 delete.
	self assert: (node1 dependents includes: connection1) not.
	self assert: (node2 dependents includes: connection1) not.
	node2 delete.
	self assert: (node1 dependents includes: connection2) not.
	self assert: (node2 dependents includes: connection2) not.
	
	self assert: (simulation synchronousConnections contains: [:x | x =connection2]) not.
	self assert: (simulation synchronousConnections contains: [:x | x =connection1]) not.
	