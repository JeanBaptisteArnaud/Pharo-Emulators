initialize - gameboy
initializeBiosPhase4
	"Setup Stack"
	gameboy := GBDebugGameboy new.
	gameboy loadBiosPhase4.