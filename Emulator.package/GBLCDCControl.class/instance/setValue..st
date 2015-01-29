value
setValue: anInteger
	self BGDisplay: (anInteger bitAt: 8).
	self BGTileMapDisplaySelect: (anInteger bitAt: 7).
	self BGWindowTileDataSelect: (anInteger bitAt: 6).
	self LCDDisplayEnable: (anInteger bitAt: 5).
	self OBJSpriteDisplayEnable: (anInteger bitAt: 4).
	self OBJSpriteSize:(anInteger bitAt: 3).
	self WindowDisplayEnable: (anInteger bitAt: 2).
	self WindowTileMapDisplaySelect: (anInteger bitAt: 1).