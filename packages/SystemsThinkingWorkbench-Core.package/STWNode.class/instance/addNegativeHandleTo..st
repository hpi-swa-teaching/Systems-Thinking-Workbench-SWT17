halos and balloon help
addNegativeHandleTo: myHalo

	^ (self
		addSimpleHandleTo: myHalo
		action: #toggleNegativePermission
		target: self
		color: (self isNegativePermitted ifFalse: [Color green] ifTrue: [Color red])
		balloonText: 'Toggle negativity'
		icon: MenuIcons squeakIcon asMorph)
			on: #mouseUp send: #delete to: myHalo;
			yourself
