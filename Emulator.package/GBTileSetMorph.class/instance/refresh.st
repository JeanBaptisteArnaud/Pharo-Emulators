as yet unclassified
refresh
	1 to: 256 do:[:each | 
		(cache at: each) form: (tileSet at: each). 
		].
	self changed.