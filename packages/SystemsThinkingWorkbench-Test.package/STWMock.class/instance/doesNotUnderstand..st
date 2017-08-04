error handling
doesNotUnderstand: aMessage
	"Looks for a defined method of this mock object and calls it if found."
	
	(self methods includesKey: aMessage selector)
		ifTrue: [^ (self methods at: aMessage selector) valueWithArguments: aMessage arguments].
	^ super doesNotUnderstand: aMessage
