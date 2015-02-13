handle
downDown
	(toggleTable at: 4) ifFalse:[
		(toggleTable at: 4 put: true).
		d reverse.
		self changed].