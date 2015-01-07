as yet unclassified
drawLine
	"Variable declaration"
	|  line  i j  x y offset  localPalette
	localLY localLCDC
	localScrollY localScrollX
	localWX localWY
	localWindowYOffset 
	localBackgroundYOffset localBackgroundXOffset localBgAndWinDisplay localWindowDisplay| 
	"variable initialization "
	localLY := self LY.
	localLCDC := self LCDC.
	localScrollY := self scrollY.
	localScrollX := self scrollX.
	localWX := self WX.
	localWY:= self WY.
	localWindowYOffset := GBLCDC windowYOffsetFor: localLCDC.
	localBackgroundYOffset := GBLCDC backgroundYOffsetFor: localLCDC.
	localBackgroundXOffset := GBLCDC backgroundXOffsetFor: localLCDC.
	localBgAndWinDisplay := GBLCDC bgDisplayFor: localLCDC.
	localWindowDisplay := GBLCDC windowDisplayFor: localLCDC.
	
	localPalette := self palette.
	offset := localLY*160.
	
	(localLY == 0) ifTrue:[
		currentWinLine := 0.
		"tiles memory changed ?"
		self tilesDirty ifTrue:[self updateTiles].
		"back memory changed ?"
		self backgroundDirty ifTrue:[self updateBackground].].
	
	
    localBgAndWinDisplay ifTrue:[
 	   y := localBackgroundYOffset + ((localScrollY+localLY)%256).
	
	    x := 160+offset.
	    i := 160.
	    line := backgroundData at: (y + 1).
		[x > offset ] whileTrue:[
			8 timesRepeat:[      
				x := x -1. i := i - 1.
				frameBuffer at: (x+1) put: ((localPalette at: (1+ (line at: (1 + localBackgroundXOffset + ((i+localScrollX)%256))))))]].

		localWindowDisplay ifTrue:[	
			((localWY <= localLY) and:[localWX  < 167]) ifTrue:[
				y := localWindowYOffset + currentWinLine.
				i := localWX - 7 + offset.
				j := (i<0)ifTrue:[0 - i] ifFalse:[0].
			 	line := backgroundData at: (y + 1).
 	   
				j to: 167- localWX do:[:e |
					x := e + 1.
					[frameBuffer at: (x + i) put:  (localPalette at: (1 + (line at: (localBackgroundXOffset + x))))] on: Error do:[] ].
			
				currentWinLine := currentWinLine + 1] ]].
