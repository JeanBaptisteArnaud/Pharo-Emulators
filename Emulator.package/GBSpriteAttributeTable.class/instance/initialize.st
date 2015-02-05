memory access
initialize
	"each sprite have his own bltBit with this own cache"
	| cnt |
	spritePool := Array new: 40. 
	cnt := 1.
	1 to: self size by: 4 do:[:eachSpriteIndex | |S|
		S := GBSprite new.
		self at: eachSpriteIndex put: (GBSpriteY new sprite: S; yourself).
		self at: eachSpriteIndex + 1 put: (GBSpriteX new sprite: S; yourself).
		self at: eachSpriteIndex + 2 put: (GBSpriteTile new sprite: S; yourself).
		self at: eachSpriteIndex + 3 put: (GBSpriteFlags new sprite: S; yourself).
		spritePool at: cnt put: S. cnt := cnt + 1.
		].