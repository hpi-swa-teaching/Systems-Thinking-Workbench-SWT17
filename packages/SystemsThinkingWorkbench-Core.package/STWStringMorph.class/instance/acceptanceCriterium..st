accessing
acceptanceCriterium: anObject

	anObject isBlock ifTrue: [acceptanceCriterium := anObject]
					  ifFalse: [self error: anObject, ' is not a Block'].