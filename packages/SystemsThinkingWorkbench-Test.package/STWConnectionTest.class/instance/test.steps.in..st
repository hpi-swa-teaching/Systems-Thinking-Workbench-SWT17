testing
test: aConnection steps: steps in: aSimulation
	"Tests if a connection takes intake from one node and transfers output to another node."
	
	| level1 level2 time |
	
	level1 := aConnection startNode level.
	level2 := aConnection endNode level.
	self assert: level2 equals: aConnection endNode level.
	aSimulation startSimulation.
	time := aSimulation lastStepTime.
	aSimulation ifNotNil: 
		[(steps) timesRepeat:
			[aSimulation stepAt: time + STWSimulation intervalTime.
			time := time + STWSimulation intervalTime.]].
	self assert: (level1 - ((1 + steps) * aConnection intake)) equals: aConnection startNode level.
	self assert: (level2 + (steps * aConnection output)) equals: aConnection endNode level.
