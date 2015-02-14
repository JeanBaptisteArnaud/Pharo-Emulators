handle
aDown
	(toggleTable at: 5) ifFalse:[
		(toggleTable at: 5 put: true).
		a reverse.
		joystick inputAOrRight.
		self changed.].