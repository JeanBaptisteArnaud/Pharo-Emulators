initialize - gameboy
initializeBiosPhase2
	"Setup Stack"
	gameboy := GBDebugGameboy new.
	gameboy loadBiosPhase2.