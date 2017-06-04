updating
performSimulationStep
	
	self startNode level: self startNode level - self intake.
	self endNode level: self endNode level + self output.