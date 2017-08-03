halos and balloon help
addMoveHandleTo: myHalo

	^ self
		addSimpleHandleTo: myHalo
		action: #startDragTarget:
		target: myHalo
		color: Color blue
		balloonText: 'Move'
		icon: MenuIcons smallChangesIcon asMorph
