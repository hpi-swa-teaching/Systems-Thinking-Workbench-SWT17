editing
acceptContents
	"Updates filling state after editing"

	super acceptContents.
	self owner updateFilling.