api
setBGMap0
	bitbltScreen sourceForm: formTileMap0.
	self displayIsOn ifTrue:[self framebufferToLCD].