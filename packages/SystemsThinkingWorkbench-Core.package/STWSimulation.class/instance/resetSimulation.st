simulation
resetSimulation
	
	"remove all submorphs except the first ever added -> start reset Buttons"
	self nodes size timesRepeat: [ (self nodes at: 1) delete]. 
	
	self resetState do:[:aMorph |
							self addMorph: aMorph].
								
	self redraw.
	self simulationTime: 0.
	self stopSimulation.