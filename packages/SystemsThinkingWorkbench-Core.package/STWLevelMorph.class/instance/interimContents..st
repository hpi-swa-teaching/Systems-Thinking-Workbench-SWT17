editing
interimContents: aString

	[(aString notEmpty and: [self canHold: aString asNumber])
		ifTrue:
			[super interimContents: aString asNumber asString.
			self owner ifNotNil: [:owner | owner backupLevel: aString asNumber].]]
		on: NumberParserError
		do: [].
