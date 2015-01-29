slow memory access
initialize
	super initialize.
	2 to: 42 do:[:e | self at: e put: 0.].
	
	LCDC := GBLCDCControl new.
	LCDC setScreen: self.
	
	RAMTileSet := GBGraphicsRAMTileSet new.
	RAMTileMap := GBGraphicsRAMTileMap new.
	RAMTileSet atAllPut: 0.
	RAMTileMap atAllPut: 0.
	
	"RAMTileSet notifier: self.
	RAMTileMap notifier: self."