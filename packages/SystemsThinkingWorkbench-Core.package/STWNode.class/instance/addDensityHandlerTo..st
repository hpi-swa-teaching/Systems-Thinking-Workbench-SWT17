halos and balloon help
addDensityHandlerTo: myHalo

	|submorph handle|
	submorph := STWHaloNumberMorph new contents:(self density asString truncateTo: 5).
	submorph action: #density:.
	
	handle := (myHalo createHandleFor: #launchMiniEditor:   
						to: submorph
						color: Color orange
						containing: (MenuIcons fugueDocumentClockIcon asMorph))
						addMorph: submorph.
	handle balloonText: 'Click me to insert a new density.'.
	submorph bottomLeft: handle bottomRight.
	myHalo addMorph: handle.
	^ handle
