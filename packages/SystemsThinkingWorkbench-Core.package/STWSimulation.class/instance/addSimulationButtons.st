initialization
addSimulationButtons
	
	self playButton: (SimpleButtonMorph new
						label: 'Start';
						target: self;
						actionSelector: #toggleSimulation;
						position: self position).
	self addMorph: self playButton.
	
	self resetButton: (SimpleButtonMorph new
						label: 'Reset';
						target: self;
						actionSelector: #resetSimulation;
						position: self position + ((self playButton extent x + 40)@ 0)).
	self addMorph: self resetButton.
