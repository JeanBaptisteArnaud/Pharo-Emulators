handle
startUp
	(toggleTable at: 7) ifTrue:[
		(toggleTable at: 7 put: false).
		start reverse.
		joystick releaseStartOrDown.
		self changed.].