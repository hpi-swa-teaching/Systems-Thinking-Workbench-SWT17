as yet unclassified
testBinaryOperators

	| operators |
	
	operators := '+-,*/' asByteArray.

	self testAllMethodsFor:
		[:source |
		| result inComment inString |
		inComment := false.
		inString := false.
		result := OrderedCollection new.
		(1 to: source asByteArray size)
			do: [:index |
				(source asByteArray at: index) = 34 ifTrue: [inComment := inComment not].
				(source asByteArray at: index) = 39 ifTrue: [inString := inString not].
				operators 
					do:
						[:operator |
						(((source asByteArray at: index) = operator) and: [inComment not] and: [inString not])
							ifTrue:
								[result add: (((source asByteArray at: index + 1) = 32) 
										and: [(source asByteArray at: index - 1) = 32])]].
				result add: true].
		result allSatisfy: [:elem | elem = true]].