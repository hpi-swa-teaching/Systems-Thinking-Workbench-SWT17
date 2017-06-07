simulation
resetSimulation
	
	self stopSimulation.
	self submorphs: self resetState.
	
	"Since i don't know how to redraw the morph, we have to stick with this. I know it's ugly. BUT IT WORKS"
	self position: (self position + (1@1)).
	self position: (self position - (1@1)).
	self simulationTime: 0.