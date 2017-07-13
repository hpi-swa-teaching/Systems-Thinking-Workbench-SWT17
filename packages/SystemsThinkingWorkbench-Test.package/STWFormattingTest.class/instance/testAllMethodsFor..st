as yet unclassified
testAllMethodsFor: aCondition

	(Smalltalk allClasses
		select: [:class |
			class category = 'SystemsThinkingWorkbench-Core'])
		do: [:class |
			class organization allMethodSelectors
				do: [:method |
					| source |
					source := (class compiledMethodAt: method) getSource.
					self assert: (aCondition value: source).]]