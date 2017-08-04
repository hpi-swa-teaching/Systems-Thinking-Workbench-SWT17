halos and balloon help
addMiddleHandlesTo: aHalo

	| synchronicity |
	
	self isSynchronous 
		ifTrue: [synchronicity := 's' asMorph] 
		ifFalse: [synchronicity := 'a' asMorph].
	aHalo
		addMiddleHandleFor: [self delete]
		color: Color red muchLighter
		containing: (ScriptingSystem formAtKey: #'Halo-Dismiss') asMorph;
		
		addMiddleHandleFor:
			[self isSynchronous
				ifTrue:
					[self beAsynchronous.
					synchronicity contents: 'a'.]
				ifFalse:
					[self beSynchronous.
					synchronicity contents: 's'.]]
		color: Color blue muchLighter
		containing: synchronicity;
		
		addMiddleHandleFor: [self inspect]
		color: Color blue veryMuchLighter
		containing: (ScriptingSystem formAtKey: #'Halo-Debug') asMorph.
