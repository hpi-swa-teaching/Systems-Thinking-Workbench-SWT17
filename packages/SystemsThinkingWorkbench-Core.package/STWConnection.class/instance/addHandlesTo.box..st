halos and balloon help
addHandlesTo: aHalo box: aBox

	aHalo addMiddleHandleFor: [ self delete. ]
		color: Color red
		containing: (ScriptingSystem formAtKey: #'Halo-Dismiss') asMorph.
