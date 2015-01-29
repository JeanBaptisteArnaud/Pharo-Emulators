initialize - memory 
initializeRam
	| ram |
	self flag:#todo.
	ram := 0.
	16rA001 to: 16rC000 do:[:e | memoryMap at: e put: ram].
