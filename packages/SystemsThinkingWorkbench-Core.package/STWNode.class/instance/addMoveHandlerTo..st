halos and balloon help
addMoveHandlerTo: myHalo

	|handle|
	
		handle := myHalo createHandleFor: #startDragTarget:  
						to: myHalo
						color: Color blueberry 
						containing: (MenuIcons smallChangesIcon asMorph).
						
	myHalo addMorph: handle.
	^handle