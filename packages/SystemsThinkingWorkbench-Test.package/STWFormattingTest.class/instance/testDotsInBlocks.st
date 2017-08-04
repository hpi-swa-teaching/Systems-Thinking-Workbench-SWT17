testing
testDotsInBlocks
	"Test if all blocks follow our guideline of not having a dot when including only a single statement."

	self testAllMethodsFor:
		[:source |
		| dots inBlock result return |
		dots := OrderedCollection new.
		return := OrderedCollection new.
		result := OrderedCollection new.
		inBlock := 0.
		(1 to: source size)
			do: [:index |
				((source at: index) = $[
					and: [(source at: (index - 1)) ~= $$])
						ifTrue:
							[inBlock := inBlock + 1.
							dots at: inBlock ifAbsentPut: 0.].
				((source at: index) = $^ and: [(source at: (index - 1)) ~= $$])
					ifTrue:
						[(inBlock ~= 0)
							ifTrue: [return at: inBlock ifAbsentPut: 1]].
				((source at: index) = $]
					and: [(source at: (index - 1)) ~= $$])
						ifTrue:
							[
							| A B C D |
							A := (dots at: inBlock) = 0.
							B := (dots at: inBlock) > 1.
							C := (source at: index - 1) = $..
							D := (return at: inBlock ifAbsent: [0]) = 1.
							result add: (A or: [B and: C] or: [C not and: D]).
							dots removeAt: inBlock.
							inBlock := inBlock - 1.].
				((source at: index) = $.
					and: [(source at: (index - 1)) ~= $$]
					and: [inBlock ~= 0])
						ifTrue:
							[dots at: inBlock put: ((dots at: inBlock) + 1)]].
		result allSatisfy: [:elem | elem = true].].
