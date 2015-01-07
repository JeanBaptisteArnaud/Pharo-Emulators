drawing-tiles
recycleCachedForm: aForm toTile: index 
	"can be optimize I guess ?"
	| cnt | 
	cnt := 0.
	(self calculatedTileAt: index) do: [:pixelValue | 
			aForm pixelValueAt: ((cnt\\8)@(cnt//8)) put: pixelValue.
			cnt := cnt + 1. ].