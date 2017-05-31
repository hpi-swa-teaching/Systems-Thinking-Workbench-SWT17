initialization
addSimulationButtons
	
	self playButton: STWButton new.
	self playButton contents: 'Start'.
	self playButton clickHandler: [ self toggleSimulation. ].
	self addMorph: self playButton.
	self playButton position: self position.
	
	self stopButton: STWButton new.
	self stopButton contents: 'Reset'.
	self addMorph: self stopButton.
	self stopButton clickHandler: [self resetSimulation. ].
	self stopButton position: self position + ((self playButton extent x + 10)@ 0).
	