initialization
addSimulationButtons
	
	self playButton: (STWButton new
		contents: 'Start';
		clickHandler: [ self toggleSimulation. ]).
	self addMorph: self playButton.
	self playButton position: self position.
	
	self resetButton: (STWButton new
		contents: 'Reset';
		clickHandler: [ self resetSimulation. ]).
	self addMorph: self resetButton.
	self resetButton position: self position + ((self playButton extent x + 10)@ 0).
	