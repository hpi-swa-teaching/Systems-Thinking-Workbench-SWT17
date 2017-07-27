as yet unclassified
testParentheses

	self testAllMethodsFor:
		[:source |
		| result |
		result := OrderedCollection new.
		(1 to: source size)
			do: [:index |
				((source at: index) = $()
					ifTrue: [result add: (source at: index + 1) ~= Character space].
				((source asByteArray at: index) = $))
					ifTrue: [result add: (source at: index - 1) ~= Character space].].
		result allSatisfy: [:elem | elem = true]].