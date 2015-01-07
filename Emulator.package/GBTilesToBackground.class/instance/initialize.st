as yet unclassified
initialize
	bitBltPool := Array new: 1024.
	destForm := Form extent: 256@256 depth: 32.
	self contructBitBltPool.