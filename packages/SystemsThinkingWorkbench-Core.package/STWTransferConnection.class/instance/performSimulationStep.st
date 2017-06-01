as yet unclassified
performSimulationStep
	
	self startNode level: self startNode level - self input.
	self endNode level: self endNode level + self output.