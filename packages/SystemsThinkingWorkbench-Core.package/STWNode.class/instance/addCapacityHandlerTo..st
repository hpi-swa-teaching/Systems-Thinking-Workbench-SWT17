halos and balloon help
addCapacityHandlerTo: myHalo

	|submorph handle|
	submorph := STWHaloNumberMorph new contents:(self capacity ifNil: ['oo'] ifNotNil: [self capacity asString]).
	submorph action: #capacity:.
	
	handle := (myHalo createHandleFor: #launchMiniEditor:   
						to: submorph
						color: Color banana darker
						containing: (MenuIcons objectCatalogIcon asMorph))
						addMorph: submorph.
	handle  balloonText: 'Click me to set a new Capacity'.
	submorph bottomLeft: handle bottomRight.
	
	myHalo addMorph: handle.
	^handle.					
