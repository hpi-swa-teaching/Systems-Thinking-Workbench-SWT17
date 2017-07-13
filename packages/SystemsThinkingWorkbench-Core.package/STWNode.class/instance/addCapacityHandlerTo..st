halos and balloon help
addCapacityHandlerTo: myHalo

	|submorph handle|
	submorph := STWHaloNumberMorph new contents:(self capacity asString truncateTo: 5).
	submorph action: #capacity:.
	
	handle := (myHalo createHandleFor: #launchMiniEditor:   
						to: submorph
						color: Color yellow
						containing: (MenuIcons objectCatalogIcon asMorph))
						addMorph: submorph.
	submorph bottomLeft: handle bottomRight.
	myHalo addMorph: handle.
	^handle.					
