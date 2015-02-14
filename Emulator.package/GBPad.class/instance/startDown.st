handle
startDown
	(toggleTable at: 7) ifFalse:[
		(toggleTable at: 7 put: true).
		start reverse.
		joystick inputStartOrDown.
		self changed.].