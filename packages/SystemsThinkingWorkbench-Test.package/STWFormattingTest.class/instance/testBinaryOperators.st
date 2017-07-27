as yet unclassified
testBinaryOperators
	"Test if spacing rules for binary operators are followed ('@' -> no spaces, ',' -> space afterwards, all other -> spaces before and after)."

	| operators |
	
	operators := '+-*/'.

	self testAllMethodsFor:
		[:source |
		| result inComment inString |
		inComment := false.
		inString := false.
		result := OrderedCollection new.
		(1 to: source size)
			do: [:index |
				(source at: index) = $" ifTrue: [inComment := inComment not].
				(source at: index) = $' ifTrue: [inString := inString not].
				(inComment not and: [inString not]) ifTrue:
						[(operators includes: (source at: index))
							ifTrue:
								[result add: (((source at: index + 1) = Character space)
										and: [(source at: index - 1) = Character space])]]
							ifFalse:
								[(source at: index) = $@ ifTrue:
									[result add: (((source at: index + 1) ~= Character space)
										and: [(source at: index - 1) ~= Character space])].
								(source at: index) = $, ifTrue:
									[result add: (((source at: index + 1) = Character space)
										and: [(source at: index - 1) ~= Character space])].].
				result add: true].
		result allSatisfy: [:elem | elem]].
