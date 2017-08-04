testing
testParticlePresence
	"Tests if a connection creates and destroys particle morphs according to the simulation."

	| node1 node2 connection startlevel1 startlevel2 numSteps |
	
	startlevel1 := 15.
	startlevel2 := 30.
	numSteps := 3.
	
	node1 := (STWNode new) center: 50@0; level: startlevel1.
	node2 := (STWNode new) center: 50@50; level: startlevel2.
	connection := STWConnection new.
	connection connect: node1 with: node2.
	self assert: connection particles size = 0.
	numSteps timesRepeat: [connection performSimulationStep].
	self assert: numSteps equals: connection particles size.
	self assert: (connection particles allSatisfy: [:p | p color == connection startNode fillingMorph color]).
