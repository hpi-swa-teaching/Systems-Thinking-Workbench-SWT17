as yet unclassified
testBrackets

	self testAllMethodsFor:
		[:source |
		| result |
		result := OrderedCollection new.
		(1 to: source asByteArray size)
			do: [:index |
				((source asByteArray at: index) = 91)
					ifTrue: [result add: (source asByteArray at: index + 1) ~= 32].
				((source asByteArray at: index) = 93)
					ifTrue: [result add: (source asByteArray at: index - 1) ~= 32].
				result add: true].
		result allSatisfy: [:elem | elem = true]].