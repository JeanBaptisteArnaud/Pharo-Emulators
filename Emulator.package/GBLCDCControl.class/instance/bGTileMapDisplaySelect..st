LCD Control - write
BGTileMapDisplaySelect: integer
	(integer = 1) 
		ifTrue:  [ screen setBGMap0 ]
		ifFalse: [ screen setBGMap1 ].
	
	^ value bitAt: 4 put:integer