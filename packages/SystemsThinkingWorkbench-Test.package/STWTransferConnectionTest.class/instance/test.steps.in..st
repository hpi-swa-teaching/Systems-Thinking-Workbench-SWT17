testing
test: aConnection steps: steps in: aSimulation
	"Tests if a TransferConnection takes 1 from one node and transfers 1 to another node."
	
	| level1 level2 time |
	
	level1 := aConnection startNode level.
	level2 := aConnection endNode level.
	
	self assert: [aConnection endNode level = level2].
	
	time := DateAndTime millisecondClockValue.
	aSimulation ifNotNil:[(steps + 1) timesRepeat: [aSimulation stepAt: time + 1001. time := time + 1001]].
	self assert: aConnection startNode level = (level1 - ((1 + steps) * aConnection intake)).
	self assert: aConnection endNode level = (level2 + (steps * aConnection output)).