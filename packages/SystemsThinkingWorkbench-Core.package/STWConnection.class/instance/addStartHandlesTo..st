halos and balloon help
addStartHandlesTo: aHalo

	| levelDisplay |
	
	levelDisplay := STWStringMorph new
		contents: self intake asString;
		preventEditing;
		yourself.
	
	aHalo
		addStartHandleFor:
			[self intake: self intake + 1.
			levelDisplay contents: self intake asString.]
		color: Color green muchLighter
		containing: '+' asMorph;
		
		addStartHandleFor: []
		color: Color gray muchLighter
		containing: levelDisplay;
		
		addStartHandleFor:
			[self intake: self intake - 1.
			levelDisplay contents: self intake asString.]
		color: Color red muchLighter
		containing: '-' asMorph.
