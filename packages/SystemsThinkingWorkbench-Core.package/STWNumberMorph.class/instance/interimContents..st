editing
interimContents: aString

	| isNumber |
	
	isNumber := true.
	[aString asNumber] on: Error do: [isNumber := false].
	(isNumber and: aString ~= '')
		ifTrue: [(self owner isNegativeAllowed not and: (aString asNumber < 0))
			ifFalse: [super interimContents: aString asNumber asString.
				self owner ifNotNilDo: [:a | a backupLevel: aString]]]
