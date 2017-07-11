halos and balloon help
addMoveHandlerTo: myHalo on: aPoint withRadius: aRadius

	|handle|
	handle := myHalo createHandleAt: self center + aPoint color: Color blue iconName: 'smallChangesIcon'.
	myHalo addMorphFront: handle. 
	
	handle on: #mouseUp send: #endInteraction to: self.
	handle on: #mouseDown send: #startDragTarget:  to: myHalo.
	handle balloonText: 'Move me'.
		
	"myHalo addMorphFront: ((myHalo createHandleFor:  [ :target :event | myHalo startDragTarget: event]
										color:  Color blue
										containing: (MenuIcons smallChangesIcon asMorph)
										on: self)
									center: self bottomRight;
									center: self center + aPoint;
									height: aRadius  * 2;
									balloonText: 'Move me')."