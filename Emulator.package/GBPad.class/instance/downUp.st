handle
downUp
	(toggleTable at: 4) ifTrue:[
		(toggleTable at: 4 put: false).
		d reverse.
		joystick releaseStartOrDown.
		self changed.].
