buffering
updateTiles
| tda line | 
 tda := 0. 
 line := 0.  

0 to: 384 do:[:index |
	(updateTilesList at: index + 1) ifTrue: [   
		 tda := 16r8000 + (index*16).
		1 to: 8 do:[:j |
			line := memory rb: tda. tda := tda+1.
      		line := (line bitOr: (memory rb: tda) << 8).
	     		((tileData at: index + 1) at: j) at: 1 put: ((line bitAnd: 16r8080) + 16r3FFF) >> 14.
	     		((tileData at: index + 1) at: j) at: 2 put: ((line bitAnd: 16r4040) + 16r1FFF) >> 13.
	     		((tileData at: index + 1) at: j) at: 3 put: ((line bitAnd: 16r2020) + 16r0FFF) >> 12.
	     		((tileData at: index + 1) at: j) at: 4 put: ((line bitAnd: 16r1010) + 16r07FF) >> 11.	
	     		((tileData at: index + 1) at: j) at: 5 put: ((line bitAnd: 16r0808) + 16r03FF) >> 10.
	     		((tileData at: index + 1) at: j) at: 6 put: ((line bitAnd: 16r0404) + 16r01FF) >> 9.
	  		((tileData at: index + 1) at: j) at: 7 put: ((line bitAnd: 16r0202) + 16r00FF) >> 8.
	  		((tileData at: index + 1) at: j) at: 8 put: ((line bitAnd: 16r0101) + 16r007f) >> 7.		
					
		].
	
	updateBackgroundDataList at: (index+ 1) put: true.
	backgroundDirty = true.
    	updateTilesList at: (index+ 1) put: false.
	].

	tilesDirty :=false.].

