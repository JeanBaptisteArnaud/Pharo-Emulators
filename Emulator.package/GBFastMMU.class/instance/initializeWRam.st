initialize - memory 
initializeWRam
	| ram |
	ram := GBWRam new.
	16rC001 to: 16rE000 do:[:e | memoryMap at: e put: ram].
