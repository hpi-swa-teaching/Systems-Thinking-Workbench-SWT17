testing
testSuccessfulInitialization

	| node |

	node := STWNode new.
	
	self assert: STWNode initialLevel equals: node level.
	self assert: STWNode initialDiameter asPoint equals: node extent.
	self assert: STWNode initialName equals: node name.
	self assert: STWNode initialDensity equals: node density.
	
	self assert: node center equals: (node levelMorph center - (0 @ (node height / 4))).
	self assert: node center equals: (node nameMorph center + (0 @ (node height / 4))).
	self assert: node center equals: node fillingMorph center.
