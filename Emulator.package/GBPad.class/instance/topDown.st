handle
topDown
	(toggleTable at: 1) ifFalse:[
		(toggleTable at: 1 put: true).
		t reverse.
		joystick inputSelectOrUp.
		self changed.].
