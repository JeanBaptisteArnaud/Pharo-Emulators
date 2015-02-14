handle
leftDown
	(toggleTable at: 2) ifFalse:[
		(toggleTable at: 2 put: true).
		l reverse.
		joystick inputBOrLeft.
		self changed.].
