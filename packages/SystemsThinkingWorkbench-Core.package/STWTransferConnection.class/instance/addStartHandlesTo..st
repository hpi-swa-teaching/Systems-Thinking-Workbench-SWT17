halos and balloon help
addStartHandlesTo: aHalo

	| levelDisplay |
	
	levelDisplay := STWStringMorph new.
	levelDisplay preventEditing.
	
	aHalo addStartHandleFor: [ self intake: self intake + 1. levelDisplay contents: self intake asString.] 
		color: Color green muchLighter
		containing: '+' asMorph.
	aHalo addStartHandleFor: [] color: Color gray muchLighter containing: levelDisplay.
	
	levelDisplay contents: self intake asString.
	aHalo addStartHandleFor: [ self intake: self intake - 1. levelDisplay contents: self intake asString.] 
		color: Color red muchLighter
		containing: '-' asMorph.