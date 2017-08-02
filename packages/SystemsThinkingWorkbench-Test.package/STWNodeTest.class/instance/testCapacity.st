testing
testCapacity
	"Test"

	| node level capacity |
	node := STWNode new.
	level := 10.
	capacity := 10.
	
	node level: level.
	
	self assert: (node canProvide: level).
	self assert: (node canProvide: level + 1).
	self assert: (node canReceive: (capacity  - level + 1)).
	
	node toggleNegativePermission.
	
	self assert: (node canProvide: level).
	self deny: (node canProvide: level + 1).
	self assert: (node canReceive: (capacity  - level + 1)).
	
	node capacity: capacity.
	self assert: (node canProvide: level).
	self deny: (node canProvide: level + 1).
	self deny: (node canReceive: (capacity  - level + 1)).
	
	node toggleNegativePermission. 
	
	self assert: (node canProvide: level).
	self assert: (node canProvide: level + 1).
	self deny: (node canReceive: (capacity  - level + 1)).
