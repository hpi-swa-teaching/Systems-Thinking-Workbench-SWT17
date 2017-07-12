halos and balloon help
addResizeHandlerTo: myHalo on: aPoint withRadius: aRadius

	|handle|
	
	handle := (CircleMorph new) height: aRadius * 2;
									center: aPoint;
									balloonText: 'Resize me.';
									color: Color random.
									
	myHalo addMorph: handle.
	
	handle 	on: #mouseUp send: #delete to: myHalo;
			on: #mouseDown send: #resizeMorph: to: self;
			addMorph: (MenuIcons smallFontsIcon asMorph center: handle center).
