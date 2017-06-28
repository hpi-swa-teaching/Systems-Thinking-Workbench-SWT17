editing
interimContents: aString

	(aString isAllDigits and: aString ~= '' and: (aString asNumber <= self owner maximumCapacity))
		ifTrue: [super interimContents: aString.
			self owner ifNotNilDo: [:a | a backupLevel: aString]]
