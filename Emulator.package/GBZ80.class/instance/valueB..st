debug
valueB: aStream 
	| s |
	s := self b value hex copyAfter: $r.
	aStream nextPutAll: s.
	(2 - s size) timesRepeat:[ aStream nextPut: Character space].
	aStream nextPut: Character space.
	aStream nextPut: $:.
	aStream nextPut: Character space.
