testing
testAllMethodsFor: aCondition
	"Iterates over all of our own methods and checks a Condition on their source."
	
	self sources keysAndValuesDo: [:identifier :source |
		(aCondition value: source)
			ifFalse: [self signalFailure: identifier]].
