as yet unclassified
testReturnStatements

	self testAllMethodsFor:
		[:source |
		| return |
		return := nil.
		(1 to: source asByteArray size)
			do: [:index |
				((source asByteArray at: index) = 94)
					ifTrue: [return := index]].
		return ifNotNil:
			[((source asByteArray at: (source asByteArray size - 1)) ~= 46)
				and: [(source asByteArray at: (return + 1)) = 32]]
		ifNil: [true]].