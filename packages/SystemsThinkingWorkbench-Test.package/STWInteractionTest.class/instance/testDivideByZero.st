testing
testDivideByZero
	"Checks if clicking the same node twice gets handled."

	| playfield node |
	
	playfield := STWSimulation new.
	node := playfield addNodeAt: 0@0.
	node createConnectionFrom: node.
