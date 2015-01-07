as yet unclassified
refresh
	1 to: 1024 do:[:each | 
		(cache at: each) form: (tileMap at: each). 
		].
	self changed.