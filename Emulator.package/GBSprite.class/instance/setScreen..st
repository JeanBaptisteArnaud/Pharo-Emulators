pallette - management
setScreen: aScreen
	screen := aScreen.
	self setPaletteValueTo: screen palette.
	tileArray := screen RAMTileSet.
	bltbit8x16 setDestForm: screen screenForm.
	bltbit8x16 clipRect: (0@0 extent: screen screenSize).
	bltbit8x8 setDestForm: screen screenForm.
	bltbit8x8 clipRect: (0@0 extent: screen screenSize).
	