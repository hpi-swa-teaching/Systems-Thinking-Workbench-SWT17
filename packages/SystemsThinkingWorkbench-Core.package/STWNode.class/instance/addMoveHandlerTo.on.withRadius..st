halos and balloon help
addMoveHandlerTo: myHalo on: aPoint withRadius: aRadius

	|handle|
	
	handle := (CircleMorph new) height: aRadius *2;
									center: aPoint;
									balloonText: 'Delete me.';
									color: Color blue lighter.
									
	myHalo addMorph: handle.
	
	handle 	on: #mouseUp send: #endInteraction to: self;
			on: #mouseDown send: #startDragTarget: to: myHalo;
			addMorph: (MenuIcons smallChangesIcon asMorph center: handle center).
		
	"myHalo addMorphFront: ((myHalo createHandleFor:  [ :target :event | myHalo startDragTarget: event]
										color:  Color blue
										containing: (MenuIcons smallChangesIcon asMorph)
										on: self)
									center: self bottomRight;
									center: self center + aPoint;
									height: aRadius  * 2;
									balloonText: 'Move me')."