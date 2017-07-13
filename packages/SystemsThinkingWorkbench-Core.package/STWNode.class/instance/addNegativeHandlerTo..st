halos and balloon help
addNegativeHandlerTo: myHalo

	|handle|
	
	handle := myHalo createHandleFor: #toggleNegativePermission   
						to: self
						color: (self isNegativePermitted ifFalse: [Color green] ifTrue: [Color red])
						containing: (MenuIcons squeakIcon asMorph).
						
	handle on: #mouseUp send: #delete to: myHalo.						
	myHalo addMorph: handle.
	^handle