testing
testSuccessfulSimulation
	"Tests if a TransferConnection takes x from one node and transfers y to another node."

	| node1 node2 connection startlevel1 startlevel2 |
	
	startlevel1 := 15.
	startlevel2 := 30.
	
	node1 := (STWNode new) center: 50@0; level: startlevel1.
	node2 := (STWNode new) center: 50@50; level: startlevel2.
	connection := STWTransferConnection new.
	connection connect: node1 with: node2.
		
	self assert: [node1 level == startlevel1].
	self assert: [node2 level == startlevel2].
	
	self test: connection steps: 3.
	
	connection intake: -2.
	connection output: 7.
	
	self test: connection steps: 5.
	