halos and balloon help
addMaxCapacityHandlerTo: myHalo on: aPoint withRadius: aRadius

	|handle inputMorph|
	
	inputMorph := self capacity asString asMorph.
	
	
	handle := (CircleMorph new) height: aRadius *2;
									center: aPoint;
									balloonText: 'Shiftclick me to insert a new Capacity.';
									color: Color brown.
									
	myHalo addMorph: handle.
	
	handle  addMorph: (MenuIcons objectCatalogIcon asMorph center: handle center);			
			addMorph: (inputMorph bottomLeft: handle bottomRight) ;
			on: #mouseDown send: #launchMiniEditor: to: (handle submorphs at: 1).

	"myHalo addMorphFront: ((myHalo createHandleFor:  [ :target :event | myHalo startDragTarget: event]
										color:  Color brown
										containing: (MenuIcons objectCatalogIcon asMorph)
										on: self)
									center: self bottomRight;
									center: self center + aPoint;
									height: aRadius  * 2;
									balloonText: 'Edit my Capacity')."