accessing
toggleNegativePermission

	negativeAllowed ifTrue: [	negativeAllowed := false.
								self levelMorph minimum: 0.
								self level < 0 ifTrue: [self level: 0].]
					 ifFalse: [	negativeAllowed := true.
								self levelMorph minimum: nil.].
