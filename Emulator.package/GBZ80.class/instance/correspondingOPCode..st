debug
correspondingOPCode: aStream
	| op  s |
	op := mmu rb:(self pc value).
	s := (opCodesTable at: (op + 1)) printString copyAfter: Character space.
	aStream nextPutAll: s.
	(8 - s size) timesRepeat:[ aStream nextPut: Character space].
	aStream nextPut: Character space.
	aStream nextPut: $:.
	aStream nextPut: Character space.

	
	
