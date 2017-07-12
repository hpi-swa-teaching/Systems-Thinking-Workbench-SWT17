halos and balloon help
addDeletionHandlerTo: myHalo on: aPoint withRadius: aRadius

	|handle|
	
	handle := (CircleMorph new) height: aRadius *2;
									center: aPoint;
									balloonText: 'Delete me.';
									color: Color bubblegum.
									
	myHalo addMorph: handle.
	
	handle 	on: #mouseUp send: #delete to: myHalo;
			on: #mouseDown send: #delete  to: self;
			addMorph: (MenuIcons smallDeleteIconContents asMorph center: handle center).
