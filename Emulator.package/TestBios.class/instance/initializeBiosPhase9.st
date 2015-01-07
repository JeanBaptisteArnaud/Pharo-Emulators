initialize - gameboy
initializeBiosPhase9
	"Setup Stack"
	gameboy := GBDebugGameboy new.
	gameboy loadBiosPhase9.