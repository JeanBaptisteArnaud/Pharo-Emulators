pallette - management
setScreen: aScreen
	screen := aScreen.
	self setPaletteValueTo: screen palette.
	tileArray := screen RAMTileSet.