halos and balloon help
addInspectionHandlerTo: myHalo

	|handle|
	
		handle := myHalo createHandleFor: #inspect  
						to: self 
						color: Color gray  
						containing: (MenuIcons smallFullscreenOnIcon asMorph).
	handle balloonText: 'Click me to inspect me.'.
	myHalo addMorph: handle.
	^handle
