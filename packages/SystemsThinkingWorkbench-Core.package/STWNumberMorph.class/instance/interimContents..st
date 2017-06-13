editing
interimContents: aString
	
	aString isAllDigits ifTrue: [super interimContents: aString.
							  self owner ifNotNilDo: [:a | self owner backupLevel: aString.]]