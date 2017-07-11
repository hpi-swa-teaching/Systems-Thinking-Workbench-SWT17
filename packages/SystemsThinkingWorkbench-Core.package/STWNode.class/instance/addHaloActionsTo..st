as yet unclassified
addHaloActionsTo: aHalo

	|handleOffset fulcrum handleRadius|
	
	handleOffset := 360 / 6.
	handleRadius := 20.
	
	
	fulcrum := Point r: self radius + handleRadius +2  degrees: handleOffset.
	aHalo addMorphFront: ((aHalo createHandleFor:  [:target | target perform: #delete]
										color:  Color yellow
										containing: (MenuIcons smallDeleteIconContents asMorph)
										on: self)
									center: self center + fulcrum;
									height: handleRadius *2;
									balloonText: 'Delete me').
									
													
	fulcrum := Point r: self radius +handleRadius +2 degrees: 2 * handleOffset.
	aHalo addMorphFront: ((aHalo createHandleFor:  [ :target :event | aHalo startDragTarget: event]
										color:  Color blue
										containing: (MenuIcons smallChangesIcon asMorph)
										on: self)
									center: self bottomRight;
									center: self center + fulcrum;
									height: handleRadius  * 2;
									balloonText: 'Move me').
									
									
	fulcrum := Point r: self radius +handleRadius +2 degrees: 3 * handleOffset.
	aHalo addMorphFront: ((aHalo createHandleFor:  
								[ :target | target perform: #toggleNegativePermission]		
										color:  ((self isNegativePermitted) ifFalse: [Color red] ifTrue: [Color green]) 
										containing: (MenuIcons squeakIcon asMorph)
										on: self)
									center: self bottomRight;
									center: self center + fulcrum;
									height: handleRadius * 2;
									balloonText: 'Make me reach negative level').

