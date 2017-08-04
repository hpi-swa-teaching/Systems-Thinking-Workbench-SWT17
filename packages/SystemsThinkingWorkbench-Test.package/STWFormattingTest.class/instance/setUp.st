running
setUp
	"Gather all relevant method sources to reduce the amount of decompilations."
	
	self sources: Dictionary new.
	
	(Smalltalk allClasses
		select: [:class |
			class category = 'SystemsThinkingWorkbench-Core'
				or: [class category = 'SystemsThinkingWorkbench-Test']])
		do: [:class |
			class class organization allMethodSelectors
				do: [:method |
					self sources at: class name, ' class>>', method asString
						put: (class class compiledMethodAt: method) getSource string].
			 class organization allMethodSelectors
				do: [:method |
					self sources at: class name, '>>', method asString
						put: (class compiledMethodAt: method) getSource string].].
