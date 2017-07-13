testing
testNodeShape

	| node |
	
	node := STWNode new.
	
	self signalFailure: node fillingMorph extent asString.
	
	self assert: node fillingMorph extent = (52@52).
	
	node level: 200.
	self assert: node fillingMorph extent = (78@78).
	self assert: node fillingMorph visible.
	
	node level: 0.
	self assert: node fillingMorph visible not.
	
	node lineWidth: 5.
	self assert: node borderWidth = 5.
