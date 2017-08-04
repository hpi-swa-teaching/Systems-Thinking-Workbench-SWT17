testing
testSuccessfulSimulation
	"Tests if a TransferConnection takes x from one node and transfers y to another node."

	| node1 node2 connection startlevel1 startlevel2 simulation |
	
  	startlevel1 := 15.
  	startlevel2 := 30.
	
	simulation := STWSimulation new.
  
	node1 := simulation addNodeAt: 150@50.
	node1 level: startlevel1.
	node2 := simulation addNodeAt: 500@150.
	node2 level: startlevel2.
	connection := node2 createConnectionFrom: node1.
	
	self assert: startlevel1 equals: node1 level.
	self assert: startlevel2 equals: node2 level.
  	connection intake: -2.
  	connection output: 7.
	
	self test: connection steps: 5 in: simulation.
	simulation delete.
