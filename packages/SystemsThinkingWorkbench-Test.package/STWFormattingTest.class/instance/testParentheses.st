as yet unclassified
testParentheses
	"Test if no opening parenthesis is followed by a space and no closing parenthesis is preceeded by a space."
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
		result allSatisfy: [:elem | elem = true].].
