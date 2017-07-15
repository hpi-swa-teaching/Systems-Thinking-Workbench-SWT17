halos and balloon help
addResizeHandlerTo: myHalo

	|handle|
	handle := myHalo createHandleFor: #resizeMorph:  
						to: self
						color: Color orchid  lighter 
						containing: (MenuIcons smallFontsIcon asMorph).
	handle balloonText: 'Click me to resize the Node.'.
	myHalo addMorph: handle.
	^ handle
