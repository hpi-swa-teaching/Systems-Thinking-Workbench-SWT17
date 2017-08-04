testing
testMorphBehaviour
	"Tests if a simulation can be initialized, opened within the active world and removed."
	
	| simulation |
	
	simulation := STWSimulation new.
	simulation openInWorld.
	simulation delete.
