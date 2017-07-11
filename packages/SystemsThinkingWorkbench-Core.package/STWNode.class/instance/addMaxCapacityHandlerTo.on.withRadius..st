halos and balloon help
addMaxCapacityHandlerTo: myHalo on: aPoint withRadius: aRadius

	|handle inputMorph|
	
	inputMorph := STWLevelMorph new.
	
	
	handle := (CircleMorph new) height: aRadius *2;
									center: aPoint;
									balloonText: 'Shiftclick me to insert a new Capacity.';
									color: Color brown.
									
	myHalo addMorph: handle.
	
	handle 	on: #mouseUp send: #delete to: myHalo;
			on: #mouseDown send: #toggleNegativePermission to: self;
			addMorph: (MenuIcons objectCatalogIcon asMorph center: handle center).

	"myHalo addMorphFront: ((myHalo createHandleFor:  [ :target :event | myHalo startDragTarget: event]
										color:  Color brown
										containing: (MenuIcons objectCatalogIcon asMorph)
										on: self)
									center: self bottomRight;
									center: self center + aPoint;
									height: aRadius  * 2;
									balloonText: 'Edit my Capacity')."