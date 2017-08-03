halos and balloon help
addInputHandleTo: myHalo action: aSelector contents: aString centeredAt: aPoint color: aColor balloonText: aText icon: anIcon
	
	| submorph handle |
	
	submorph := STWHaloNumberMorph new contents: aString.
	submorph action: aSelector.
	handle := ((myHalo createHandleFor: #launchMiniEditor:
						to: submorph
						color: aColor
						containing: anIcon)
						addMorph: submorph)
							balloonText: aText;
							center: aPoint;
							yourself.
	submorph bottomLeft: handle bottomRight.
	myHalo addMorph: handle.
