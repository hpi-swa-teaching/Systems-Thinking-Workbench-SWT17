halos and balloon help
addDensityHandleTo: myHalo

	^ self
		addInputHandleTo: myHalo
		action: #density:
		contents: (self density asString truncateTo: 5)
		color: Color orange
		balloonText: 'Set density'
		icon: MenuIcons fugueDocumentClockIcon asMorph
