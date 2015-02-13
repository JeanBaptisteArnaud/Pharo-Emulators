handle
rightUp
	(toggleTable at: 3) ifTrue:[
		(toggleTable at: 3 put: false).
		r reverse.
		self changed.].
