handle
leftUp
	(toggleTable at: 2) ifTrue:[
		(toggleTable at: 2 put: false).
		l reverse.
		self changed.].
