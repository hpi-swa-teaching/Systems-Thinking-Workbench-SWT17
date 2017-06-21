editing
interimContents: aString
	
	(aString isAllDigits and: aString ~= '') ifTrue: [super interimContents: aString.
							  self owner ifNotNilDo: [:a | a backupLevel: aString].].