as yet unclassified
testDotsInBlocks

	self testAllMethodsFor:
		[:source |
		| dots inBlock result return |
		dots := OrderedCollection new.
		return := OrderedCollection new.
		result := OrderedCollection new.
		inBlock := 0.
		(1 to: source size)
			do: [:index |
				| A B C D |
				(source at: index) = $[ ifTrue: [inBlock := inBlock + 1. dots at: inBlock ifAbsentPut: 0.].
				(source at: index) = $^ ifTrue: [(inBlock ~= 0) ifTrue: [return at: inBlock ifAbsentPut: 1]].
				(source at: index) = $] ifTrue: [
					A := (dots at: inBlock) = 0.
					B := (dots at: inBlock) > 1.
					C := (source at: index - 1) = $..
					D := (return at: inBlock ifAbsent: [0]) = 1.
					result add: (A or: [B and: C] or: [C not and: D]).
					dots removeAt: inBlock.
					inBlock := inBlock - 1].
				(((source at: index) = $.) and: [inBlock ~= 0])
					ifTrue: [dots at: inBlock put: ((dots at: inBlock) + 1)]].
		result allSatisfy: [:elem | elem = true]].