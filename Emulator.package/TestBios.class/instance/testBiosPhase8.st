test
testBiosPhase8
	|  p screen |
	self initializeBiosPhase8.
	gameboy runBlock.
 	"processor assert"
	p := gameboy processor.
	"stack pointer"
	screen := gameboy screen.
	screen updateTiles.
	
	