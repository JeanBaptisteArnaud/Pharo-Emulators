bitblt
basicFramebufferToLCD
	| origin extent |
	origin := self scrollX@self scrollY.
	extent := origin + self screenSize.
	bitbltScreen 
		sourceOrigin: origin;
		width: extent x;
		height: extent y;
		copyBits	