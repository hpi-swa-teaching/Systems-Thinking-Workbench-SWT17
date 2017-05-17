interaction
doubleClick
	self owner firstClicked: nil.
	self nameDisplayMorph ifNil:
			 [self nameDisplayMorph: TextMorph new.
			self updateNameMops]. 
	
	