initialize - gameboy
initializeBiosPhase5
	"Setup Stack"
	gameboy := GBDebugGameboy new.
	gameboy loadBiosPhase5.