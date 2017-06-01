initialization
addSimulationButtons
	
	self playButton: (STWButton new
		contents: 'Start';
		clickHandler: [ self toggleSimulation. ];
		position: self position).
	self addMorph: self playButton.
	
	self resetButton: (STWButton new
		contents: 'Reset';
		clickHandler: [ self resetSimulation. ];
		position: self position + ((self playButton extent x + 10)@ 0)).
	self addMorph: self resetButton.
	