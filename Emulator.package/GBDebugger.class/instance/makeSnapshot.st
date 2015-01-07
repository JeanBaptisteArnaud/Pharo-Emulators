as yet unclassified
makeSnapshot
	self preSnapshot.
	slotsToDebug do: [:selector | target perform: selector with: output ].
	self postSnapshot.
