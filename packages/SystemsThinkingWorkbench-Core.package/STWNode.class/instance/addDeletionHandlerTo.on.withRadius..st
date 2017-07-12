halos and balloon help
addDeletionHandlerTo: myHalo on: aPoint withRadius: aRadius

	|handle|
	
	handle := (CircleMorph new) height: aRadius *2;
									center: aPoint;
									balloonText: 'Delete me.';
									color: Color yellow.
									
	myHalo addMorph: handle.
	
	handle 	on: #mouseUp send: #delete to: myHalo;
			on: #mouseDown send: #delete  to: self;
			addMorph: (MenuIcons smallDeleteIconContents asMorph center: handle center).
	
	"legacy:"
	"myHalo addMorphFront: ((myHalo createHandleFor:  [:target | target perform: #delete]
										color:  Color yellow
										containing: (MenuIcons smallDeleteIconContents asMorph)
										on: self)
									center: self center + aPoint;
									height: aRadius * 2;
									balloonText: 'Delete me').
									"