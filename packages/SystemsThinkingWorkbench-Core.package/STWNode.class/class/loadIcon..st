constants
loadIcon: anIconName
	
	|funtionName|
	self flag: 'TODO'.
	
	"""does not work, gets fixed later"""
	funtionName := (anIconName asString, 'IconContent') asSymbol.

	^ (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: (STWNode perform: funtionName) readStream)) scaledToSize: 18
