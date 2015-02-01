debuging
graphicsMorphs
	| align map tile |
	align :=  self newRow.
	map := self newColunm.
	tile := self newColunm.
		
	align addMorph: screenContainer.
	align addMorph: map.
	align addMorph: tile.
	
	map 	