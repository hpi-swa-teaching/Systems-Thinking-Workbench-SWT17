testing
testDependentsManagement
	"Tests if a connection is adde."

	| node1 node2 connection1 connection2 |
	
	node1 := (STWNode new) center: 50@0.
	node2 := (STWNode new) center: 50@50.
	connection1 := STWConnection new.
	connection2 := STWConnection new.
	
	connection1 connect: node1 with: node2.
	connection2 connect: node2 with: node1.
	
	self assert: (node1 dependents contains: connection1).
	self assert: (node1 dependents contains: connection2).
	self assert: (node2 dependents contains: connection1).
	self assert: (node2 dependents contains: connection2).
	connection1 delete.
	self assert: (node1 dependents contains: connection1) not.
	self assert: (node2 dependents contains: connection1) not.
	node2 delete.
	self assert: (node1 dependents contains: connection2) not.
	self assert: (node2 dependents contains: connection2) not.
	