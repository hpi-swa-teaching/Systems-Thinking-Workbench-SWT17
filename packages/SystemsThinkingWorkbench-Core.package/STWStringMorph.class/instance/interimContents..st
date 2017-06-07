editing
interimContents: aString
	
	(self acceptanceCriterium value: aString) ifTrue: [self contents: aString]