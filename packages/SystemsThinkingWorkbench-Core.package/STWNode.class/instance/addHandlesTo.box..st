halos and balloon help
addHandlesTo: myHalo box: aBox
	"overwrite the addHandles of the standart Morph and places our own Handles.
	
	Since I am a Circle, I won't use the Rectangle and directly add my Handles to my Halo.
	The Box is only sent, to overwrite the function.
	
	A Handle is a simple Morph, who gets added onto the Halo and triggers events"
	|handle handleOffset  aHalo fulcrum handleRadius submorph|
	aHalo := myHalo.
	handleOffset := 360 / self haloItemNumber.
	handleRadius := 15.
	
	
	"RESIZE"
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: handleOffset).
	handle := myHalo createHandleFor: #resizeMorph:  
						to: self
						color: Color random 
						containing: (MenuIcons smallFontsIcon asMorph).
	handle center: fulcrum.
	myHalo addMorph: handle.
	
	"MOVING"
	fulcrum := self center + (Point r: self radius +handleRadius +2 degrees: 2 * handleOffset).
	handle := myHalo createHandleFor: #startDragTarget:  
						to: myHalo
						color: Color blueberry 
						containing: (MenuIcons smallChangesIcon asMorph).
	handle center: fulcrum.
	myHalo addMorph: handle.		
	
	"DELETION"
	fulcrum := self center + (Point r: self radius +handleRadius +2 degrees: 3 * handleOffset).
	handle := myHalo createHandleFor: #delete  
						to: self
						color: Color bubblegum 
						containing: (MenuIcons smallDeleteIcon asMorph).
	handle center: fulcrum.
	myHalo addMorph: handle.		

	"INSPECTION"
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: 4 * handleOffset).
	handle := myHalo createHandleFor: #inspect   
						to: self
						color: Color gray
						containing: (MenuIcons smallFullscreenOffIcon asMorph).
	handle center: fulcrum.
	myHalo addMorph: handle.	
	
	"NEGATIVE"
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: 5 * handleOffset).
	handle := myHalo createHandleFor: #toggleNegativePermission   
						to: self
						color: (self isNegativePermitted ifFalse: [Color green] ifTrue: [Color red])
						containing: (MenuIcons squeakIcon asMorph).
	handle center: fulcrum.
	handle on: #mouseUp send: #delete to: myHalo.
	myHalo addMorph: handle.					
					
	"DENSITY"	
	submorph := STWHaloNumberMorph new contents:(self density asString truncateTo: 5).
	submorph action: #density:.
	
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: 6 * handleOffset).
	handle := (myHalo createHandleFor: #launchMiniEditor:   
						to: submorph
						color: Color orange
						containing: (MenuIcons fugueDocumentClockIcon asMorph))
						addMorph: submorph.
	handle center: fulcrum.
	submorph bottomLeft: handle bottomRight.
	myHalo addMorph: handle.					


	"DENSITY"	
	submorph := STWHaloNumberMorph new contents:(self density asString truncateTo: 5).
	submorph action: #capacity:.
	
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: 7 * handleOffset).
	handle := (myHalo createHandleFor: #launchMiniEditor:   
						to: submorph
						color: Color yellow
						containing: (MenuIcons objectCatalogIcon asMorph))
						addMorph: submorph.
	handle center: fulcrum.
	submorph bottomLeft: handle bottomRight.
	myHalo addMorph: handle.	
