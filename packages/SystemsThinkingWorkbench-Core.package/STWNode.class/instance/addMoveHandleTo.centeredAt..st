halos and balloon help
addMoveHandleTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #startDragTarget:
		to: myHalo
		color: Color blue
		containing: MenuIcons smallChangesIcon asMorph)
			balloonText: 'Move';
			center: aPoint).