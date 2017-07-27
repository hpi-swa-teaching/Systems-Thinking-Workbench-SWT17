as yet unclassified
testDotsInBlocks

	self testAllMethodsFor:
		[:source |
		| dots inBlock result |
		dots := OrderedCollection new.
		result := OrderedCollection new.
		inBlock := 0.
		(1 to: source size)
			do: [:index |
				| A C |
				(source at: index) = $[ ifTrue: [inBlock := inBlock + 1. dots at: inBlock ifAbsentPut: 0.].
				(source at: index) = $] ifTrue: [
					A := (dots at: inBlock) = 0.
					C := (source at: index - 1) = $..
					result add: (((dots at: inBlock) ~= 1) or: [(A not and: C) or: [A and: C not]]).].
				(((source at: index) = $.) and: [inBlock ~= 0])
					ifTrue: [dots at: inBlock put: ((dots at: inBlock) + 1)]].
		result allSatisfy: [:elem | elem = true]]