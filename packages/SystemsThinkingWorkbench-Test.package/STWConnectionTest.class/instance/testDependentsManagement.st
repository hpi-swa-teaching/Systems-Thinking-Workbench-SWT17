testing
testDependentsManagement
	"Tests if a connection correctly registers itself as a dependent."

	| node1 node2 connection1 connection2 simulation |
	
	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 50@0.
	node2 :=  simulation addNodeAt: 50@50.
	connection1 := node2 createConnectionFrom: node1.
	connection2 := node1 createConnectionFrom: node2.
	
	self assert: (node1 dependents includes: connection1).
	self assert: (node1 dependents includes: connection2).
	self assert: (node2 dependents includes: connection1).
	self assert: (node2 dependents includes: connection2).
	connection1 delete.
	self deny: (node1 dependents includes: connection1).
	self deny: (node2 dependents includes: connection1).
	node2 delete.
	self deny: (node1 dependents includes: connection2).
	self deny: (node2 dependents includes: connection2).
