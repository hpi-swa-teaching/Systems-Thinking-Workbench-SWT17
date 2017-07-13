halos and balloon help
addDeletionHandlerTo: myHalo

	|handle|
	
	handle := myHalo createHandleFor: #delete  
						to: self
						color: Color bubblegum 
						containing: (MenuIcons smallDeleteIcon asMorph).
						
	myHalo addMorph: handle.
	^handle