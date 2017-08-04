A STWSimulation is the Sandbox in wich all action takes place.

Structure:
instance var 	Type 			Description 
connections:	Collection 		all Connections of this simulation
simulationTime: 	Number 	miliseconds since last simulation step
lastStepTime:	Number 		time in miliseconds when the last step was performed
nodes:			Collection 		all Nodes of this simulation
playButton:		SimpleButtonMorph Press to start the Simulation
resetButton:	SimpleButtonMorph Press to reset the Simulation
simulationRunning: 	Boolean 	Whether the Simulation is running
