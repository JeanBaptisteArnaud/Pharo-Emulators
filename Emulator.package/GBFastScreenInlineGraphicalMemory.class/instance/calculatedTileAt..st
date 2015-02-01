drawing-tiles
calculatedTileAt: index
		"1 = self class beginAddress + 15"
	"2 = self class beginAddress+ ((2-1)*16)"
	"16r8000 =  32768" 
	| begin array|
	begin := ((index*16) + 1).
	array := Array new:64.
	1 to: 8 do: [:y |
		1 to: 8 do: [:x || colorIndex |
			colorIndex := (( RAMTileSet at: (begin + ((y-1)*2))) bitAt: x) + (((RAMTileSet at:begin + ((y*2)-1)) bitAt: x)*2).
			array at: (((y-1)*8) + (9-x))  put: (tilePalette at: (colorIndex + 1)).
		]].
	^array
