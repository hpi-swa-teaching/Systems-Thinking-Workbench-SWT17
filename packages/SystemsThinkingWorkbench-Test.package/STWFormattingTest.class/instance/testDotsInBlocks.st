as yet unclassified
testDotsInBlocks

	self testAllMethodsFor:
		[:source |
		| dots inBlock result |
		dots := OrderedCollection new.
		result := OrderedCollection new.
		inBlock := 0.
		(1 to: source asByteArray size)
			do: [:index |
				| A C |
				(source asByteArray at: index) = 91 ifTrue: [inBlock := inBlock + 1. dots at: inBlock ifAbsentPut: 0.].
				(source asByteArray at: index) = 93 ifTrue: [
					A := (dots at: inBlock) = 0.
					C := (source asByteArray at: index - 1) = 46.
					result add: (((dots at: inBlock) ~= 1) or: [(A not and: C) or: [A and: C not]]).].
				(((source asByteArray at: index) = 46) and: [inBlock ~= 0])
					ifTrue: [dots at: inBlock put: ((dots at: inBlock) + 1)]].
		result allSatisfy: [:elem | elem = true]]