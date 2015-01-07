initialize-release
initializeMemoryMap
	"object creation"
	| bios oam zram wram vram eram |
	memoryMap := Dictionary new.
	extendMemoryMap := GBExtendedMemoryMap new.
	bios := GBBios newFor: cartridgeRom.
	oam := GBOam new. 
	zram := GBHardwareProxy new mmu: self;yourself..
	wram := GBWRam new.
	vram := GBGraphicsRAM new mmu: self;yourself.
	eram := nil.
	
	" BIOS (256b)/ROM0"
	memoryMap at: '0' put:  bios.
	"ROM0"
	memoryMap at: '1' put:  cartridgeRom.
	memoryMap at: '2' put:  cartridgeRom.
	memoryMap at: '3' put:  cartridgeRom.
	"ROM1 (16k)"
	memoryMap at: '4' put:  cartridgeRom.
	memoryMap at: '5' put:  cartridgeRom.
	memoryMap at: '6' put:  cartridgeRom.
	memoryMap at: '7' put:  cartridgeRom.
	"Graphics"
	memoryMap at: '8' put:  vram.
	memoryMap at: '9' put:  vram.
	"External ram"
	memoryMap at: 'A' put:  eram.
	memoryMap at: 'B' put:  eram.
	" Working RAM "
	memoryMap at: 'C' put:  wram.
	memoryMap at: 'D' put:  wram.
	memoryMap at: 'E' put:  wram.
	"plenty of thing :-( Working RAM shadow, I/O, Zero-page RAM"
	memoryMap at: 'F' put:  extendMemoryMap.
	
	"extended "
	extendMemoryMap at: 'F' put:  zram.
	extendMemoryMap at: 'E' put:  oam.
		
