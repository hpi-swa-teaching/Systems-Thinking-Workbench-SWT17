as yet unclassified
acceptContents 

	|halo|
		
	
	halo := self owner owner.
	halo target capacity: self contents.
	halo perform: #delete.
