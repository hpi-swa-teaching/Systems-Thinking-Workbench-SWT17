updating
updateLevelMops
	"Baguette"
	|levelMorphCenter|
	
	levelMorphCenter := 0@(self height / 4).
	self levelDisplayMorph 
		contents: self level storeString;
		borderColor: Color black;
		align: self levelDisplayMorph center with: self center + levelMorphCenter.