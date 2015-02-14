handle
topUp
	(toggleTable at: 1) ifTrue:[
		(toggleTable at: 1 put: false).
		t reverse.
		joystick releaseSelectOrUp.
		self changed.].
