testing
testSuccessfulInitialization

	| node |

	node := STWNode new.
	
	self assert: node level = 42.
	self assert: node extent = (80@80).
	self assert: node name = '???'.
	self assert: node density = 100.
	
	self assert: node center = (node levelMorph center - (0 @ (node height / 4))).
	self assert: node center = (node nameMorph center + (0 @ (node height / 4))).
	self assert: node center = node fillingMorph center.