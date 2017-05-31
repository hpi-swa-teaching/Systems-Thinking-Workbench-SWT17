initialization
initialize
	"Initializes the state of the system thinking playfield"
	
	super initialize.
	self borderColor: Color black.
	self extent: self currentWorld extent / 2.
	self addSimulationButtons.
	self resetSimulation.