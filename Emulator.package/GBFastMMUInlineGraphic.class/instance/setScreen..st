as yet unclassified
setScreen: screen 
	| graphicsSet graphicsMap |
	screen OAM:(memoryMap at: 16rFE01).
	screen linkToPadToJoystick: (memoryMap at: 16rFF01).
	
	(memoryMap at: 16rFE01) setScreen: screen.
	
	memoryMap at: 16rFF41 put: screen LCDC.
	16rFF42 to: 16rFF6B do:[:address | memoryMap at: address put: screen.].
	memoryMap at: 16rFF47 put: screen DMA.
	screen DMA memoryMap: self.	
	memoryMap at: 16rFF51 put: (GBBiosProxy new mmu: self;yourself).
	
	"tileData and backgroundData"
	graphicsSet :=	 GBGraphicalProxyForSet notifier: screen memory: screen RAMTileSet.
	graphicsMap :=  GBGraphicalProxyForMap notifier: screen memory: screen RAMTileMap.
	(graphicsSet memory class beginAddress + 1) to: (graphicsSet memory class endAddress + 1) do:[:e | memoryMap at: e put: graphicsSet ].
	(graphicsMap memory class beginAddress + 1) to: (graphicsMap memory class endAddress + 1) do:[:e | memoryMap at: e put: graphicsMap ]. 