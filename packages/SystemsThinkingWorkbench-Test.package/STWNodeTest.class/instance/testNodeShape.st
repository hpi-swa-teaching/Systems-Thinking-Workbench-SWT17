testing
testNodeShape
	"Tests if node filling morph is resized correctly."

	| node |
	
	node := STWNode new.

	self assert: 52@52 equals: node fillingMorph extent.
	node level: 200.
	self assert: 78@78 equals: node fillingMorph extent.
	self assert: node fillingMorph visible.
	
	node level: 0.
	self deny: node fillingMorph visible.
	
	node lineWidth: 5.
	self assert: 5 equals: node borderWidth.
