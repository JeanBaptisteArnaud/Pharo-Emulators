api
setBGMap1
	bitbltScreen sourceForm: formTileMap1.
	self displayIsOn ifTrue:[self framebufferToLCD].