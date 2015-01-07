initialize - gameboy
initializeBiosPhase7
	"Setup Stack"
	gameboy := GBDebugGameboy new.
	gameboy loadBiosPhase7.