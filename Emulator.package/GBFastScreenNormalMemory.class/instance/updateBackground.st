buffering
updateBackground
|tile0 tile1 x y z addr   |
   x  := 1.
   y  := 0.
   z  := 0.
  addr := 16r8000.
1 to: 2048 do: [:e | 
	
	GBUnimplemented run.
		tile0 := memory rb: addr. addr := addr + 1.
    	tile1 := 256 + ((tile0 > 127) ifTrue:[(tile0 bitAt: 8 put: 0) - 128] ifFalse:[tile0]).
	
	updateBackgroundTileList at: e put: false.
	x := x + 8.
	(x >= 256) ifTrue:[x := 1. y := y + 8.]].

	backgroundDirty := false.
	1 to: 385 do:[:index | updateBackgroundDataList at: index put: false].
