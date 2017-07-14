as yet unclassified
testParentheses

	self testAllMethodsFor:
		[:source |
		| result |
		result := OrderedCollection new.
		(1 to: source asByteArray size)
			do: [:index |
				((source asByteArray at: index) = 40)
					ifTrue: [result add: (source asByteArray at: index + 1) ~= 32].
				((source asByteArray at: index) = 41)
					ifTrue: [result add: (source asByteArray at: index - 1) ~= 32].
				result add: true].
		result allSatisfy: [:elem | elem = true]].