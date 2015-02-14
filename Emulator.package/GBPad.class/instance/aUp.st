handle
aUp
	(toggleTable at: 5) ifTrue:[
		(toggleTable at: 5 put: false).
		a reverse.
		joystick releaseAOrRight.
		self changed.].