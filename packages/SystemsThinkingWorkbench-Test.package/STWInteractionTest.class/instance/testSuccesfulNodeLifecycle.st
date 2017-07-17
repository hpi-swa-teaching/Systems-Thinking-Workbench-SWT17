testing
testSuccesfulNodeLifecycle
	"Checks if a node can be placed in the playfield by clicking."

	| simulation |
	
	simulation := STWSimulation new.
	self assert: 100@100 equals: (simulation addNodeAt: 100@100) center.
