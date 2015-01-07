accessing
palette
	^(Array new: 4) 
		at: 1 put: ( Color gray privateRGB);
		at: 2 put: ( Color pink privateRGB);
		at: 3 put: ( Color red privateRGB);
		at: 4 put: ( Color black privateRGB);
		yourself.