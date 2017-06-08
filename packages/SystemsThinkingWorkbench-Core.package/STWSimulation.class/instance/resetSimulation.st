simulation
resetSimulation
	
	"remove all submorphs except the first ever added -> start reset Buttons"
	self nodes size timesRepeat: [ (self nodes at: 1) delete]. 
	
	self resetState do:[:aMorph |
							self addMorph: aMorph].
								
	"Since i don't know how to redraw the morph, we have to stick with this. I know it's ugly. BUT IT WORKS"
	self redraw.
	self simulationTime: 0.
	self stopSimulation.