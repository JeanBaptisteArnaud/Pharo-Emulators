drawing
framebufferToLCD
	self blankTheScreen.
	self basicFramebufferToLCD.
	screenContainer changed.