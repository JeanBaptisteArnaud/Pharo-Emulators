process management
initialize
	| cartridge |
	super initialize.
	cartridge := GBDebugableCartridge loadTetris.
	"cartridge := GBDebugableCartridge loadMysticQuest."
	"cartridge := GBDebugableCartridge loadSPB."
	
	
	
	"cartridge installADebugOpCodeAt: 16r293.
	cartridge installADebugOpCodeAt: 16r2a6.
	cartridge installADebugOpCodeAt: 16r2ba.
	cartridge installADebugOpCodeAt: 16r2bb."	
	"cartridge installADebugOpCodeAt: 16r29a6."
	"cartridge installADebugOpCodeAt: 16r369."
	"cartridge installADebugOpCodeAt: 16r7ff0."
	
	"cartridge installADebugOpCodeAt: 16r2a0."
	"cartridge installADebugOpCodeAt: 16r282a."
	"cartridge installADebugOpCodeAt: 16r282e."
	
	
	"cartridge installADebugOpCodeAt: 16r64fa. 
	cartridge installADebugOpCodeAt: 16r64fd. 
	cartridge installADebugOpCodeAt: 16r6500. 
	cartridge installADebugOpCodeAt: 16r6503. 
	cartridge installADebugOpCodeAt: 16r6506.	
	cartridge installADebugOpCodeAt: 16r6509.	
	cartridge installADebugOpCodeAt: 16r650c.	
	cartridge installADebugOpCodeAt: 16r6523.
	cartridge installADebugOpCodeAt: 16r6a65."
		"
	cartridge installADebugOpCodeAt: 16r2c4.

	cartridge installADebugOpCodeAt: 16r2c7.
	
	cartridge installADebugOpCodeAt: 16r2ca."
	"cartridge installADebugOpCodeAt: 16r32."
	"cartridge installADebugOpCodeAt: 16r282e."
				
	"cartridge installADebugOpCodeAt: 16r2381.
				
	cartridge installADebugOpCodeAt: 16r29e2.
	cartridge installADebugOpCodeAt: 16r282e."
	
	"cartridge installADebugOpCodeAt: 16r21b."
	"cartridge installADebugOpCodeAt: 16r2d6."
	
	"cartridge installADebugOpCodeAt: 16r2ba."
	cartridge installADebugOpCodeAt: 16r2f2.
	mmu loadRom: cartridge.
	processorLog := StandardFileStream forceNewFileNamed: 'processor.log'.
	registerLog := StandardFileStream forceNewFileNamed: 'register.log'.
	memoryLog := StandardFileStream forceNewFileNamed: 'memory.log'.
	debugger := GBDebuggerToFile new.
	debugger slotsToDebug: #(pc sp a b c d e f h l af bc de hl).
	debugger target: processor.
	"self mmu loadRom: self debugRom."