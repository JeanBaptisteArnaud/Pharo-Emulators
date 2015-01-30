accessing
palette
	^(Array new: 4) 
		at: 1 put: ( Color random privateRGB);
		at: 2 put: ( Color random privateRGB);
		at: 3 put: ( Color random privateRGB);
		at: 4 put: ( Color random privateRGB);
		yourself.