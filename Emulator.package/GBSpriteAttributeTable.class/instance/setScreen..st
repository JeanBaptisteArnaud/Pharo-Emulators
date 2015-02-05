memory access
setScreen: aScreen
	screen := aScreen.
	spritePool do:[:each | each setScreen: screen].