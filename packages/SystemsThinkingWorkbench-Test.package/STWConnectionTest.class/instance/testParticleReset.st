testing
testParticleReset
	"Tests if a connection destroys particle morphs when the simulation is reset."

	| node1 node2 connection numSteps |
	
	numSteps := 3.
	node1 := (STWNode new) center: 50@0.
	node2 := (STWNode new) center: 50@50.
	connection := STWConnection new.
	connection connect: node1 with: node2.
	self assert: connection particles isEmpty.
	numSteps timesRepeat: [connection performSimulationStep].
	self assert: numSteps equals: connection particles size.
	connection resetSimulation.
	self assert: connection particles isEmpty.
