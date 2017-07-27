as yet unclassified
testReturnStatements

	self testAllMethodsFor:
		[:source |
		| return |
		return := nil.
		(1 to: source size)
			do: [:index |
				((source at: index) = $^)
					ifTrue: [return := index]].
		return ifNotNil:
			[((source at: (source size - 1)) ~= $.)
				and: [(source at: (return + 1)) = Character space]]
		ifNil: [true]].
