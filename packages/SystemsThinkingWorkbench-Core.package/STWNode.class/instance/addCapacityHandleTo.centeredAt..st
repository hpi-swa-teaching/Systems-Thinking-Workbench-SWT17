halos and balloon help
addCapacityHandleTo: myHalo centeredAt: aPoint
	
	self	addInputHandleTo: myHalo
		action: #capacity:
		contents: (self capacity
							ifNil: ['oo']
							ifNotNil: [self capacity asString])
		centeredAt: aPoint
		color: Color yellow darker
		balloonText: 'Set capacity'
		icon: (STWNode loadIcon: #capacity) asMorph.
