as yet unclassified
acceptContents 

	|halo|
		
	
	halo := self owner owner.
	halo target perform: action with:self contents.
	halo perform: #delete.
