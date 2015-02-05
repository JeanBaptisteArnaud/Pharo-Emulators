drawing
reCachingMyself
	| begin xfrom xto xby yby yto yfrom cnty cntx form|  
	begin := ((tileIndex*16) + 1).
	(reverseX = 0) 
		ifTrue:[xfrom:=1.xto:=8.xby:=1] 
		ifFalse:[xfrom:=8.xto:=1.xby:=-1].
	(reverseY = 0) ifTrue:[yfrom:=1.yto:=8.yby:=1] ifFalse:[yfrom:=8.yto:=1.yby:=-1].
	 cnty := 8. 
	xfrom to: xto by: xby do: [:y |
		cntx := 8.
		yfrom to: yto by: yby do: [:x || colorIndex |
			colorIndex := (( tileArray  at: (begin + ((y-1)*2))) bitAt: x) + (((tileArray  at:begin + ((y*2)-1)) bitAt: x)*2).
			form8 pixelValueAt: cntx@cnty put: (currentPalette at: (colorIndex + 1)).
		cntx := cntx - 1.
		].
	cnty := cnty - 1.
 	].
	"upper 8x16: 8x8 NN AND FEh"
	form := bltBitUpperToform16 sourceForm.
	begin := (((tileIndex bitAnd: 16rFE) *16) + 1).
	(reverseX = 0) 
		ifTrue:[xfrom:=1.xto:=8.xby:=1] 
		ifFalse:[xfrom:=8.xto:=1.xby:=-1].
	(reverseY = 0) ifTrue:[yfrom:=1.yto:=8.yby:=1] ifFalse:[yfrom:=8.yto:=1.yby:=-1].
	 cnty := 8. 
	xfrom to: xto by: xby do: [:y |
		cntx := 8.
		yfrom to: yto by: yby do: [:x || colorIndex |
			colorIndex := (( tileArray  at: (begin + ((y-1)*2))) bitAt: x) + (((tileArray  at:begin + ((y*2)-1)) bitAt: x)*2).
			form pixelValueAt: cntx@cnty put: (currentPalette at: (colorIndex + 1)).
		cntx := cntx - 1.
		].
	cnty := cnty - 1.
 	].
	"lower 8x16: 8x8 NN OR 01h"
	
	form := bltBitLowerToform16 sourceForm.
	begin := (((tileIndex bitOr: 16r01) *16) + 1).
	(reverseX = 0) 
		ifTrue:[xfrom:=1.xto:=8.xby:=1] 
		ifFalse:[xfrom:=8.xto:=1.xby:=-1].
	(reverseY = 0) ifTrue:[yfrom:=1.yto:=8.yby:=1] ifFalse:[yfrom:=8.yto:=1.yby:=-1].
	 cnty := 8. 
	xfrom to: xto by: xby do: [:y |
		cntx := 8.
		yfrom to: yto by: yby do: [:x || colorIndex |
			colorIndex := (( tileArray  at: (begin + ((y-1)*2))) bitAt: x) + (((tileArray  at:begin + ((y*2)-1)) bitAt: x)*2).
			form pixelValueAt: cntx@cnty put: (currentPalette at: (colorIndex + 1)).
		cntx := cntx - 1.
		].
	cnty := cnty - 1.
 	].
	bltBitLowerToform16 copyBits.
	bltBitUpperToform16 copyBits.
		




