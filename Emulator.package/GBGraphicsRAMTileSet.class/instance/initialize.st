as yet unclassified
initialize
	super initialize.
	Tileset0Index ifNil: [Tileset0Index := 256. "-128 to + 128"].
	Tileset1Index ifNil: [Tileset1Index := 0. "0 to + 256"].
