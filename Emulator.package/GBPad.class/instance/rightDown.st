handle
rightDown
	(toggleTable at: 3) ifFalse:[
		(toggleTable at: 3 put: true).
		r reverse.
		joystick inputAOrRight.
		self changed.].
