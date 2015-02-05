as yet unclassified
initialize
	palettes := Array new: 2.
	reverseX := 0.
	reverseY := 0.		
	tileIndex := 0.
	form8 := Form extent: 8@8 depth: 32.
	form16 := Form extent: 8@16 depth: 32.
	bltBitUpperToform16 := BitBlt
			destForm: form16
			sourceForm: (Form extent: 8@8 depth: 32) 
			fillColor: Color white 
			combinationRule: Form over 
			destOrigin: 0@0
			sourceOrigin: 0@0
			extent: 8@16
			clipRect: (0@0 extent: 8@8).
			
bltBitLowerToform16 := BitBlt
			destForm: form16
			sourceForm: (Form extent: 8@8 depth: 32) 
			fillColor: Color white 
			combinationRule: Form over 
			destOrigin: 0@8
			sourceOrigin: 0@0
			extent: 8@16
			clipRect: (0@8 extent: 8@16).
			
	"bltBit8x8 := 
	bltbit8x16 := "