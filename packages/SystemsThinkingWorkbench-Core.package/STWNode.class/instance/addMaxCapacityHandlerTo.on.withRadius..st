halos and balloon help
addMaxCapacityHandlerTo: myHalo on: aPoint withRadius: aRadius

	|handle inputMorph|
	
	inputMorph := STWHaloNumberMorph new contents:(self capacity ifNil: ['oo'] ifNotNil: [self capacity asString]).
	inputMorph action: #capacity:.
	
	handle := (CircleMorph new) height: aRadius *2;
									center: aPoint;
									balloonText: 'Click me to insert a new Capacity.';
									color: Color yellow.
									
	myHalo addMorph: handle.
	
	handle  addMorph: (MenuIcons objectCatalogIcon asMorph center: handle center);			
			addMorph: (inputMorph bottomLeft: handle bottomRight) ;
			on: #mouseDown send: #launchMiniEditor: to: (handle submorphs at: 1).
