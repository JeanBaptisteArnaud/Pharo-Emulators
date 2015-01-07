debug
pcHex: aStream
	| s |
	s := self pc value hex copyAfter: $r.
	aStream nextPutAll: s.
	(4 - s size) timesRepeat:[ aStream nextPut: Character space].
	aStream nextPut: Character space.
	aStream nextPut: $:.
	aStream nextPut: Character space.
