accessing
toggleNegativePermission

	negativeAllowed ifTrue: [	negativeAllowed := false.
								self levelMorph minimum: 0.] 
					 ifFalse: [	negativeAllowed := true.
								self levelMorph minimum: nil.].
