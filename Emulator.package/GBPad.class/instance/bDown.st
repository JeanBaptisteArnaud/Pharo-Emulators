handle
bDown
	(toggleTable at: 6) ifFalse:[
		(toggleTable at: 6 put: true).
		b reverse.
		joystick inputBOrLeft.
		self changed.].