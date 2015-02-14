handle
downDown
	(toggleTable at: 4) ifFalse:[
		(toggleTable at: 4 put: true).
		d reverse.
		joystick inputStartOrDown.
		self changed.].