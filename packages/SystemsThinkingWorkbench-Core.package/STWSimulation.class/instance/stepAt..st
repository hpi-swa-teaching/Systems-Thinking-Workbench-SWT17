as yet unclassified
stepAt: aTime
	"If the simulation is running, we step the simulation, thus moving particles and adding new synchronous particles every second."
	
	| deltaTime |
	
	self isRunning ifTrue: 
		[super step.
		deltaTime := aTime - self lastStepTime.
		self connections do: [:connection | connection performAnimationStep: deltaTime / STWSimulation intervalTime].
		self 
			simulationTime: self simulationTime + deltaTime;
			lastStepTime: aTime.
		self simulationTime >= STWSimulation intervalTime 
			ifTrue: 
				[self 
					stepSimulation;
					simulationTime: self simulationTime \\ STWSimulation intervalTime].].
