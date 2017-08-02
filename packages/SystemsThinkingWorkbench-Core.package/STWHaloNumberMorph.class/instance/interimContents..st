editing
interimContents: aString

	[(aString notEmpty and: [self canHold: aString asNumber])
		ifTrue: [super interimContents: aString asNumber asString]]
		on: NumberParserError
		do: [].
