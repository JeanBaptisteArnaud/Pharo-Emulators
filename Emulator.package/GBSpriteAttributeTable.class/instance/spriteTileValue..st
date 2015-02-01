API
spriteTileValue: value
	"index in array + 1 of array(ST) + 2 index numberOfTile"
	^self at: ((value - 1) * 4) + 3 