halos and balloon help
addDensityHandlerTo: myHalo on: aPoint withRadius: aRadius

	|handle inputMorph|
	
	inputMorph := STWHaloNumberMorph new contents:(self density asString truncateTo: 5).
	inputMorph action: #density:.
	
	handle := (CircleMorph new) height: aRadius *2;
									center: aPoint;
									balloonText: 'Click me to insert a new Density.';
									color: Color orange.
									
	myHalo addMorph: handle.
	
	handle  addMorph: (MenuIcons fugueDocumentClockIcon asMorph center: handle center);			
			addMorph: (inputMorph bottomLeft: handle bottomRight) ;
			on: #mouseDown send: #launchMiniEditor: to: (handle submorphs at: 1).
