debug
valueL: aStream 
	| s |
	s := self l value hex copyAfter: $r.
	aStream nextPutAll: s.
	(2 - s size) timesRepeat:[ aStream nextPut: Character space].
	aStream nextPut: Character space.
	aStream nextPut: $:.
	aStream nextPut: Character space.
