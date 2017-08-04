testing
testDoubleClick
	"Tests if a node can be created via double clicking."

	| simulation event hand waited position |
	
	simulation := STWSimulation new.
	position := 100@100.
	"Create a mock event and hand which handle double clicking"
	waited := false.
	hand := STWMock handOnWait: [:morph :evt |
		self assert: simulation == morph.
		waited := true.].
	event := STWMock mouseAt: position withHand: hand.
	
	simulation mouseDown: event.
	self assert: waited.
	simulation doubleClick: event.
	self deny: simulation nodes isEmpty.
	self assert: position equals: simulation nodes first center.
