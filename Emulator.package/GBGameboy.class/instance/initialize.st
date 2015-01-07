as yet unclassified
initialize
	"create all elements"
	engine := GBTimerEngine new.
	processor := GBZ80InlineRegister newFor: self.
	mmu := GBFastMMUInlineGraphic new.
	screen := GBFastScreenInlineGraphicalMemory new.
	interrupt := GBInterrupt new.
	mmu loadRom: GBCartridge loadTetris.
	
	processor mmu: mmu.
	mmu setZ80: processor.
	"screen memory: mmu."
	mmu setScreen: screen.
	engine memory: mmu.
	endFrame := false.
	stop := false.
	interrupt cpu: processor.
	interrupt setRegisterTo: mmu returnInterruptsPointers.
	interrupt engine: engine.
	
	mmu setScreen: screen.
	"screen openWithSpec."
	
	engine screen: screen.
	"mmu graphics do:[:each | each screen: screen]."
	
	