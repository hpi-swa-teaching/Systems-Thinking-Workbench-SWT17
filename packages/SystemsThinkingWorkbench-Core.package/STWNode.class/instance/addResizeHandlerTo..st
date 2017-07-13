halos and balloon help
addResizeHandlerTo: myHalo

	|handle|
	handle := myHalo createHandleFor: #resizeMorph:  
						to: self
						color: Color random 
						containing: (MenuIcons smallFontsIcon asMorph).
						
	myHalo addMorph: handle.
	^handle