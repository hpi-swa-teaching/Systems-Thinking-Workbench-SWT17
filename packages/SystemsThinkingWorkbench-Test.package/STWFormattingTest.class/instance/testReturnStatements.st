as yet unclassified
testReturnStatements
	"Tests if all return statements are not followed by a dot."

	self testAllMethodsFor:
		[:source |
		| return |
		return := nil.
		(1 to: source size)
			do: [:index |
				((source at: index) = $^ and: [(source at: (index - 1)) ~= $$])
					ifTrue: [return := index]].
		return ifNotNil:
			[((source at: (source size - 1)) ~= $.)
				and: [(source at: (return + 1)) = Character space]]
		ifNil: [true].].
