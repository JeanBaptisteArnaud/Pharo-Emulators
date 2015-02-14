as yet unclassified
initializeHardware
	| dividerRegister joypad  highRam  sound wavePattern iFlags iEnable serialData serialControl dividerTimerControl dividerTimerCounter dividerTimerModulo |
	"add one to all address"
	highRam := GBHRam new.
	sound := GBSoundController new.
	wavePattern := GBWavePattern new.
	dividerRegister := GBDividerRegister new.
	dividerTimerControl := GBTimerControl new.
	dividerTimerCounter := GBTimerCounter new.
	dividerTimerModulo := GBTimerModulo new.
	
	iFlags := GBInterruptFlag new.
	iEnable := GBInterruptEnable new.
	joypad  := GBJoysticks new.
	joypad setInteruptFlagTo: iFlags.
 	serialData := GBSerialData new.
	serialControl := GBSerialControl new.
	 
	"I/O Register"
		"Joypad"
		memoryMap at: 16rFF01 put: joypad.
		"serial transfert data"
		memoryMap at: 16rFF02 put: serialData.
		"serial transfert control"
		memoryMap at: 16rFF03 put: serialControl.
		
		"Divider"
		memoryMap at: 16rFF05 put: dividerRegister.
		memoryMap at: 16rFF06 put: dividerTimerControl.
		memoryMap at: 16rFF07 put: dividerTimerCounter.
		memoryMap at: 16rFF08 put: dividerTimerModulo.
		
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