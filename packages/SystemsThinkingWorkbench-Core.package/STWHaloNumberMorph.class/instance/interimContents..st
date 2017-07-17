as yet unclassified
interimContents: aString

	| isNumber number |

	isNumber := true.

	[number := aString asNumber] on: Error do: [isNumber := false].

		(isNumber and: [aString notEmpty] and: [self canHold: number])
			ifTrue: [super interimContents: number asString].
