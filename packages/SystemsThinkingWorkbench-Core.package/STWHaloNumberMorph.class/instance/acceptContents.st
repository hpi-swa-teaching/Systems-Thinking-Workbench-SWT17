editing
acceptContents 

	| halo |

	halo := self owner owner.
	[halo target perform: action with: self contents asNumber.
	halo delete.]
		on: NumberParserError
		do: [].
