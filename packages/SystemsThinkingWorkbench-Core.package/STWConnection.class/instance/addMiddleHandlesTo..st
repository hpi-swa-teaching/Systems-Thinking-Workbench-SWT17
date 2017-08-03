halos and balloon help
addMiddleHandlesTo: aHalo

	| synchonicity |
	
	self isSynchronous 
		ifTrue: [synchonicity := 's' asMorph] 
		ifFalse: [synchonicity := 'a' asMorph].
	aHalo
		addMiddleHandleFor: [self delete]
		color: Color red muchLighter
		containing: (ScriptingSystem formAtKey: #'Halo-Dismiss') asMorph;
		
		addMiddleHandleFor:
			[self isSynchronous
				ifTrue:
					[self beAsynchronous.
					synchonicity contents: 'a'.]
				ifFalse:
					[self beSynchronous.
					synchonicity contents: 's'.]]
		color: Color blue muchLighter
		containing: synchonicity;
		
		addMiddleHandleFor: [self inspect]
		color: Color blue veryMuchLighter
		containing: (ScriptingSystem formAtKey: #'Halo-Debug') asMorph.
