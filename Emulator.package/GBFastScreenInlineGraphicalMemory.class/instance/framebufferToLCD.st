debuging
framebufferToLCD
	self blankTheScreen.
	self basicFramebufferToLCD.

	(LCDC OBJSpriteDisplayEnable = 1) ifTrue: [ 
	(LCDC OBJSpriteSize = 0) 
			ifTrue:[OAM render8x8pSprites]
			ifFalse:[OAM render8x16pSprites]].
	
	screenContainer changed.