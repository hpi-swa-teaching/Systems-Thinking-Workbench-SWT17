halos and balloon help
addMaxCapacityHandlerTo: myHalo on: aPoint withRadius: aRadius

	|aMorph|
	
	aMorph := STWLevelMorph new.

	"myHalo addMorphFront: ((myHalo createHandleFor:  [ :target :event | myHalo startDragTarget: event]
										color:  Color brown
										containing: (MenuIcons objectCatalogIcon asMorph)
										on: self)
									center: self bottomRight;
									center: self center + aPoint;
									height: aRadius  * 2;
									balloonText: 'Edit my Capacity')."