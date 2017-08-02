halos and balloon help
addDeletionHandleTo: myHalo

	^ self
		addSimpleHandleTo: myHalo
		action: #delete
		target: self
		color: Color bubblegum
		balloonText: 'Delete'
		icon: MenuIcons smallDeleteIcon asMorph
