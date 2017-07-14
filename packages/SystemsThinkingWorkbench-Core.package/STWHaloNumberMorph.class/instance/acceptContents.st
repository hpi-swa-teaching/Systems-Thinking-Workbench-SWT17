as yet unclassified
acceptContents 

	| halo isNumber number |

	halo := self owner owner.
	isNumber := true.

	[number := self contents asNumber] on: Error do: [isNumber := false].
	isNumber
		ifTrue: [halo target perform: action with: number asString.
				halo perform: #delete.]
