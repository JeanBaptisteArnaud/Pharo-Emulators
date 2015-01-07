initialize - gameboy
initializeBiosPhase6
	"Setup Stack"
	gameboy := GBDebugGameboy new.
	gameboy loadBiosPhase6.