constants
loadIcon: anIconName
	
	^ (Form fromBinaryStream: 
		(Base64MimeConverter mimeDecodeToBytes: 
			(STWNode perform: (anIconName, #IconContent) asSymbol) readStream))
		scaledToSize: STWHaloMorph handleRadius asPoint
