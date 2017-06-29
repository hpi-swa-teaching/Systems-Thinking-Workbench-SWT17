editing
interimContents: aString
	
	| isNumber |

	isNumber := true.
	
	[aString asNumber] on: Error do: [isNumber := false].
	(isNumber and: aString ~= '' and: (self maximum ifNil: [true] ifNotNil: [aString asNumber <= self maximum]))
		ifTrue: [((self minimum ifNil: [true] ifNotNil: [aString asNumber < self minimum]))
			ifFalse: [super interimContents: aString asNumber asString.
				self owner ifNotNilDo: [:a | a backupLevel: aString]]]
