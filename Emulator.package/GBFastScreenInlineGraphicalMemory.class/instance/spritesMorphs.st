debuging
spritesMorphs
	| tiles tile cnt|
	tiles := self newColumn.	
	tile := self newRow.cnt := 1.	tiles addMorph: tile.
	OAM allSpritesForm8 do:[:eachTile | tile addMorph: eachTile asMorph.
		cnt = 8 	ifTrue:[tile := self newRow.
					cnt := 1.
					tiles addMorph: tile.]
					ifFalse:[cnt := cnt + 1]].
	tiles addMorph:(LabelMorph newLabel: 'Sprites 8x8'). 
	tile := self newRow.cnt := 1.	tiles addMorph: tile.
	OAM allSpritesForm16 do:[:eachTile | tile addMorph: eachTile asMorph.
		cnt = 8 	ifTrue:[tile := self newRow.
					cnt := 1.
					tiles addMorph: tile.]
					ifFalse:[cnt := cnt + 1]].
	tiles addMorph:(LabelMorph newLabel: 'Sprites 8x16'). 
	
		
		
		
	^tiles