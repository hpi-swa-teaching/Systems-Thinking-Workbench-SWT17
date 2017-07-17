simulation
step
	"Step only if the simulation is running."
	
	self isSimulationRunning 
		ifTrue:
			[super step.
			self stepSimulation.].
