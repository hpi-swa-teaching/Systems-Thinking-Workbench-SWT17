accessing
lineWidth: aNumber 
	"Provide uniform access for nodes and connections."
	
	self borderWidth: aNumber.
	self updateFilling.
