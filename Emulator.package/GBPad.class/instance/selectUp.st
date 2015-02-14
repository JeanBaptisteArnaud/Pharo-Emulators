handle
selectUp
	(toggleTable at: 8) ifTrue:[
		(toggleTable at: 8 put: false).
		select reverse.
		joystick releaseSelectOrUp.
		self changed.].