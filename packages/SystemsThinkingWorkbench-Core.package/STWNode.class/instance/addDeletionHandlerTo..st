halos and balloon help
addDeletionHandlerTo: myHalo

	| handle |
	
	handle := myHalo 
				createHandleFor: #delete  
				to: self
				color: Color bubblegum 
				containing: ((ScriptingSystem formAtKey: #'Halo-Dismiss') scaledToSize: 22) asMorph.
	handle balloonText: 'Click me to delete the Node.'.
	myHalo addMorph: handle.
	^ handle
