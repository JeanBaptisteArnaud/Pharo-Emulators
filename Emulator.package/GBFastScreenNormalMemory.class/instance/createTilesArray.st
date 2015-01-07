initialize
createTilesArray
	
	tileData := Array new: 385.
	1 to: tileData size do: [:e | tileData at: e put:  (Array new: 8).
		1 to: 8 do:[:ee | (tileData at: e) at: ee put:  (Array new: 8 withAll: 0) ]].
	