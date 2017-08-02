halos and balloon help
addSimpleHandleTo: myHalo action: aSelector target: aTarget color: aColor balloonText: aText icon: anIcon

	| handle |

	handle := myHalo
				createHandleFor: aSelector
				to: aTarget
				color: aColor
				containing: anIcon.
	handle balloonText: aText.
	myHalo addMorph: handle.
	^ handle
