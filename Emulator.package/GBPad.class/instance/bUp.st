handle
bUp
	(toggleTable at: 6) ifTrue:[
		(toggleTable at: 6 put: false).
		b reverse.
		joystick releaseBOrLeft.
		self changed.].