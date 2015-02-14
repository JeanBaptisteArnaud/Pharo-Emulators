handle
selectDown
	(toggleTable at: 8) ifFalse:[
		(toggleTable at: 8 put: true).
		select reverse.
		joystick inputSelectOrUp.
		self changed.].