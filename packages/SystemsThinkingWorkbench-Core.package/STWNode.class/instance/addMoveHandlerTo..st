halos and balloon help
addMoveHandlerTo: myHalo

	|handle|
	
	handle := myHalo createHandleFor: #startDragTarget:  
						to: myHalo
						color: Color blueberry 
						containing: (STWNode loadIcon: 'move') asMorph.
	handle balloonText: 'Click me to move the Node around.'.
	myHalo addMorph: handle.
	^ handle
