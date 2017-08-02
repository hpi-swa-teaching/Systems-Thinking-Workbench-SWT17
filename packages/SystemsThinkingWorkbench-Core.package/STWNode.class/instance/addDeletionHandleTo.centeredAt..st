halos and balloon help
addDeletionHandleTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #delete
		to: self
		color: Color bubblegum
		containing: MenuIcons smallDeleteIcon asMorph)
			balloonText: 'Delete';
			center: aPoint).
