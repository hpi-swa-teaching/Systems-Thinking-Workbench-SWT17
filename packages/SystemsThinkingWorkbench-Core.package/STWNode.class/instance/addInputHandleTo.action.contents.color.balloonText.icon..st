halos and balloon help
addInputHandleTo: myHalo action: aSelector contents: aString color: aColor balloonText: aText icon: anIcon
	
	| submorph handle |
	
	submorph := STWHaloNumberMorph new contents: aString.
	submorph action: aSelector.
	handle := (myHalo createHandleFor: #launchMiniEditor:
						to: submorph
						color: aColor
						containing: anIcon)
						addMorph: submorph.
	handle  balloonText: aText.
	submorph bottomLeft: handle bottomRight.
	myHalo addMorph: handle.
	^ handle
