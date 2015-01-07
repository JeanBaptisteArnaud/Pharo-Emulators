initialize - gameboy
initializeBiosPhase1
	"Setup Stack"
	gameboy := GBDebugGameboy new.
	gameboy loadBiosPhase1.