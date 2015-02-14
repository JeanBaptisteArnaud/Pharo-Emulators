as yet unclassified
initializeHardware
	| divider joypad serial highRam  sound wavePattern iFlags iEnable |
	"add one to all address"
	highRam := GBHRam new.
	sound := GBSoundController new.
	wavePattern := GBWavePattern new.
	divider := GBDivider new.
	iFlags := GBInterruptFlag new.
	iEnable := GBInterruptEnable new.
	joypad  := GBJoysticks new.
	joypad setInteruptFlagTo: iFlags.
 	serial := GBSerial new. 
	"I/O Register"
		"Joypad"
		memoryMap at: 16rFF01 put: joypad.
		"serial transfert data"
		memoryMap at: 16rFF02 put: serial.
		"serial transfert control"
		memoryMap at: 16rFF03 put: serial.
		
		"Divider"
		memoryMap at: 16rFF04 put: divider.
		memoryMap at: 16rFF05 put: divider.
		memoryMap at: 16rFF06 put: divider.
		memoryMap at: 16rFF07 put: divider.
		
		
		"request interrupt"
		memoryMap at: 16rFF10 put: iFlags.
		"Sound Register"
		16rFF11 to: 16rFF2A do:[:address | memoryMap at: address put: sound.].
		"Wave pattern Register"
		16rFF31 to: 16rFF40 do: [:address | memoryMap at: address put: wavePattern.].
		"Screen Register"
		"16rFF41 to: 16rFF6B do:[:address | memoryMap at: address put: screen.]."
		"todo before launch"
		"Bios proxy"
		memoryMap at: 16rFF51 put: (GBBiosProxy new mmu: self;yourself).
		" ???? "
		memoryMap at: 16rFF80 put: (GBNullProxy new).
		"highRam"
		16rFF81 to: 16rFFFF do:[:address | memoryMap at: address put: highRam].
		"interupt provide"
		memoryMap at: 16r10000 put: iEnable.