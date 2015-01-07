slow memory access
initialize
	super initialize.
	1 to: 42 do:[:e | self at: e put: 0.].
	
	RAMTileSet := GBGraphicsRAMTileSet new.
	RAMTileMap := GBGraphicsRAMTileMap new.
	RAMTileSet atAllPut: 0.
	RAMTileMap atAllPut: 0.
	
	"RAMTileSet notifier: self.
	RAMTileMap notifier: self."