as yet unclassified
makeSnapshot
	self preSnapshot.
	slotsToDebug 
		do: [:selector | 
			output nextPutAll: 
				(target perform: selector) printString ].
	self postSnapshot.
