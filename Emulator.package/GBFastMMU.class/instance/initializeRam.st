initialize - memory 
initializeRam
	| ram |
	ram := ''.
	16rA001 to: 16rC000 do:[:e | memoryMap at: e put: ram].
