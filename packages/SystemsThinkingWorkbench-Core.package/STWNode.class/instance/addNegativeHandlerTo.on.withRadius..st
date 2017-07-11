halos and balloon help
addNegativeHandlerTo: myHalo on: aPoint withRadius: aRadius



	|handle|
	
	handle := (CircleMorph new) height: aRadius *2;
									center: aPoint;
									balloonText: 'Click me to toggle Negativity ;).';
									color: (self isNegativePermitted ifFalse: [Color green]
																	 ifTrue: [Color red]).
									
	myHalo addMorph: handle.
	
	handle 	on: #mouseUp send: #delete to: myHalo;
			on: #mouseDown send: #toggleNegativePermission to: self;
			addMorph: (MenuIcons squeakIcon asMorph center: handle center);
			addMorph: (('Allow Negative' asMorph) bottomRight:  (handle bottomLeft)).
			
	"		
	myHalo addMorphFront: ((myHalo createHandleFor:  
							[ :target | target perform: #toggleNegativePermission]		
									color:  ((self isNegativePermitted) ifFalse: [Color red] ifTrue: [Color green]) 
									containing: (MenuIcons squeakIcon asMorph)
									on: self)
								center: self bottomRight;
								center: self center + aPoint;
								height: aRadius * 2;
								balloonText: 'Make me reach negative level')."