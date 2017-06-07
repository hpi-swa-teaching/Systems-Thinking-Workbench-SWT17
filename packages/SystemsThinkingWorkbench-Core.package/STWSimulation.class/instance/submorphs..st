accessing
submorphs: newMorphs
	"comment stating purpose of message"

	newMorphs isArray ifFalse:[self error: 'not an Array']. 
	1 to: newMorphs size do:
		[:counter | ((newMorphs at: counter) isKindOf: Morph) 
					ifFalse: [self error:'not any kind of Morph ']].
	submorphs := newMorphs