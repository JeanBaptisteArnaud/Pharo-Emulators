debuging
graphicsMorphs
	|  align map   tile cnt tiles |
	align :=  self newRow.
	map := self newColumn.	
	tiles := self newColumn.	
			
	tile := self newRow.cnt := 1.	tiles addMorph: tile.
	cacheCalculatedTileMap do:[:eachTile | tile addMorph: eachTile asMorph.
		cnt = 8 	ifTrue:[tile := self newRow.
					cnt := 1.
					tiles addMorph: tile.]
					ifFalse:[cnt := cnt + 1].	
			
		].
	
	map addMorph: formTileMap0 asMorph;
		addMorph: formTileMap1 asMorph.
		
	align addMorph: tiles.
	align addMorph: map.
	align addMorph: screenContainer.
		
		
	^align