initialize - gameboy
initializeBiosPhase3
	"Setup Stack"
	gameboy := GBDebugGameboy new.
	gameboy loadBiosPhase3.