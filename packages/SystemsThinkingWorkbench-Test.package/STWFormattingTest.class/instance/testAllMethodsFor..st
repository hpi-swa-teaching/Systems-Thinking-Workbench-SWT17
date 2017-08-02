as yet unclassified
testAllMethodsFor: aCondition
	"Iterates over all of our own methods and checks a Condition on their source."

	(Smalltalk allClasses
		select: [:class |
			class category = 'SystemsThinkingWorkbench-Core'
				or: [class category = 'SystemsThinkingWorkbench-Test']])
		do: [:class |
			class class organization allMethodSelectors
				do: [:method |
					| source |
					source := (class class compiledMethodAt: method) getSource string.
					(aCondition value: source)
						ifFalse: [self signalFailure: class name , ' class>>' , method asString].].
			class organization allMethodSelectors
				do: [:method |
					| source |
					source := (class compiledMethodAt: method) getSource string.
					(aCondition value: source)
						ifFalse: [self signalFailure: class name , '>>' , method asString].].].
