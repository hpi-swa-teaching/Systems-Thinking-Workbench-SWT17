editing
acceptContents
	"Ensures new content is not empty and centers it afterwards."

	self contents = '' ifTrue: [self contents: '???']. 
	self updatePositionFromOwnerCenter.