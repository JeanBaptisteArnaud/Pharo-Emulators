initialize - gameboy
initializeBiosPhase8
	"Setup Stack"
	gameboy := GBDebugGameboy new.
	gameboy loadBiosPhase8.