halos and balloon help
addDeletionHandleTo: myHalo

	^ self
		addSimpleHandleTo: myHalo
		action: #delete
		target: self
		color: Color red
		balloonText: 'Delete'
		icon: MenuIcons smallDeleteIcon asMorph
