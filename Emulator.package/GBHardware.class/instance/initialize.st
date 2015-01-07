as yet unclassified
initialize
	registerTables := Array new: (self endAddress - (self beginAddress - 1)) .
	1 to: (self endAddress - (self beginAddress - 1)) do:[:e | registerTables at: e put: 0.].