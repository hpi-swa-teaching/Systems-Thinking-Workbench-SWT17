updating
updateNameMops
	"Baguette"
	|nameMorphCenter|
	
	nameMorphCenter := 0@(self height / 4).
	self nameDisplayMorph 
		contents: self name;
		borderColor: Color black;
		align: self nameDisplayMorph center with: self center - nameMorphCenter.