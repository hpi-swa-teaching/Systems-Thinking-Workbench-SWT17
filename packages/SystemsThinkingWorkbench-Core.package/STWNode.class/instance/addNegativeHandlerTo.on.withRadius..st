halos and balloon help
addNegativeHandlerTo: myHalo on: aPoint withRadius: aRadius

	myHalo addMorphFront: ((myHalo createHandleFor:  
							[ :target | target perform: #toggleNegativePermission]		
									color:  ((self isNegativePermitted) ifFalse: [Color red] ifTrue: [Color green]) 
									containing: (MenuIcons squeakIcon asMorph)
									on: self)
								center: self bottomRight;
								center: self center + aPoint;
								height: aRadius * 2;
								balloonText: 'Make me reach negative level').