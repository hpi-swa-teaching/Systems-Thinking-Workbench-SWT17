testing
test: aConnection steps: steps
	"Tests if a TransferConnection takes 1 from one node and transfers 1 to another node."
	
	| level1 level2 |
	
	level1 := aConnection startNode level.
	level2 := aConnection endNode level.
	
	steps timesRepeat: [aConnection performSimulationStep].
	
	self assert: [aConnection startNode level == (level1 - (steps * aConnection intake))].
	self assert: [aConnection endNode level == (level2)].
	
	aConnection stepAt: aConnection lastStepTime + 1000.

	self assert: [aConnection endNode level == (level2 + (steps * aConnection output))].