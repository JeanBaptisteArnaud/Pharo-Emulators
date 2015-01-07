as yet unclassified
asMorphs
	| output x y | 
	output := Array new: 384.
	1 to: 384 do:[:tile || form |
		 form :=  Form  extent: 8@8 depth: 32.
		x := y:= 1.
		 (CacheCalculatedTileMap at: tile) do: [:pixelValue | form
				form pixelValueAt: (x@y) put: pixelValue.
				output at: tile put: form.
				x := x+ 1. 
				x = 9 ifTrue: [x := 1. y :=y + 1. ].
				 ]].
	^output