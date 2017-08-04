halos and balloon help
addDensityHandleTo: myHalo centeredAt: aPoint

	self	addInputHandleTo: myHalo
		action: #density:
		contents: (self density asString truncateTo: 5)
		centeredAt: aPoint
		color: Color orange
		balloonText: 'Set density'
		icon: (STWNode loadIcon: #density) asMorph.
