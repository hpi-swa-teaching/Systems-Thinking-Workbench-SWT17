simulation
stepAt: aTime
	"Step only if the simulation is running."
	
	self isSimulationRunning 
		ifTrue: [
			super step.
			self connections do: [:connection | connection performAnimationStep: (aTime - self lastStepTime) / 1000].
			self simulationTime: self simulationTime + (aTime - self lastStepTime).
			self lastStepTime: aTime.
			self simulationTime > 1000 ifTrue: [self stepSimulation. self simulationTime: self simulationTime \\ 1000]].
