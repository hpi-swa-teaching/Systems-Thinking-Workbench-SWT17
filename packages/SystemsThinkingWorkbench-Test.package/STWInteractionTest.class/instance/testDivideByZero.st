testing
testDivideByZero
	"Checks if clicking the same node twice gets handled."

	| playfield node1 node2 |
	
	playfield := STWSimulation new.

	node1 := playfield addNodeAt: 0@0.
	node2 := playfield addNodeAt: 100@100.
	
	node2 createConnectionFrom: node2 ofType: STWConnection.
	