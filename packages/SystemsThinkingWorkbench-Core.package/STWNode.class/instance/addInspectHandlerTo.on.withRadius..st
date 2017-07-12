halos and balloon help
addInspectHandlerTo: myHalo on: aPoint withRadius: aRadius



	|handle|
	
	handle := (CircleMorph new) height: aRadius *2;
									center: aPoint;
									balloonText: 'Inspect me.';
									color: Color gray.
									
	myHalo addMorph: handle.
	
	handle 	on: #mouseUp send: #delete to: myHalo;
			on: #mouseDown send: #inspect to: self;
			addMorph: (MenuIcons smallFullscreenOffIcon asMorph center: handle center).
