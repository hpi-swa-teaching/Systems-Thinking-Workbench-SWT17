halos and balloon help
addHandlesTo: aHalo box: aBox

	| synchonicity |

	aHalo addMiddleHandleFor: [self delete]
		color: Color red muchLighter
		containing: (ScriptingSystem formAtKey: #'Halo-Dismiss') asMorph.
	
	self isSynchronous ifTrue: [synchonicity := 's' asMorph] ifFalse: [synchonicity := 'a' asMorph].
	aHalo
		addMiddleHandleFor: [self isSynchronous
			ifTrue: [self beAsynchronous. synchonicity contents: 'a'.]
			ifFalse: [self beSynchronous. synchonicity contents: 's'.]]
		color: Color blue muchLighter
		containing: synchonicity.
		
	aHalo addMiddleHandleFor: [self inspect]
		color: Color gray
		containing: (MenuIcons smallFullscreenOnIcon) asMorph.
