halos and balloon help
addMoveHandlerTo: myHalo on: aPoint withRadius: aRadius

	|handle|
	
	handle := (CircleMorph new) height: aRadius *2;
									center: aPoint;
									balloonText: 'Move me.';
									color: Color blueberry.
									
	myHalo addMorph: handle.
	
	handle 	on: #mouseUp send: #endInteraction to: self;
			on: #mouseDown send: #startDragTarget: to: myHalo;
			addMorph: (MenuIcons smallChangesIcon asMorph center: handle center).
