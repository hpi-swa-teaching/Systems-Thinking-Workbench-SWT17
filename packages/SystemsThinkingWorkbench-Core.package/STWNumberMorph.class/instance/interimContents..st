editing
interimContents: aString

	(aString isAllDigits and: aString ~= '' and: (self maximum ifNil: [true] ifNotNil: [aString asNumber <= self maximum]))
		ifTrue: [super interimContents: aString.
			self owner ifNotNilDo: [:a | a backupLevel: aString]]
