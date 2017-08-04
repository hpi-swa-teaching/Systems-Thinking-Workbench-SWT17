testing
test: aConnection steps: steps in: aSimulation
	"Tests if a TransferConnection takes 1 from one node and transfers 1 to another node."
	
	| level1 level2 time |
	
	level1 := aConnection startNode level.
	level2 := aConnection endNode level.
	
	self assert: level2 equals: aConnection endNode level.
	
	aSimulation startSimulation.
	time := aSimulation lastStepTime.
	aSimulation ifNotNil:[(steps) timesRepeat: [aSimulation stepAt: time + 1000. time := time + 1000.]].
	self assert: (level1 - ((1 + steps) * aConnection intake)) equals: aConnection startNode level.
	self assert: (level2 + (steps * aConnection output)) equals: aConnection endNode level.
