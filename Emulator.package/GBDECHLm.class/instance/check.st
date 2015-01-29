as yet unclassified
check
	self flag: #todo.
	"processor checkZeroForDecrementAtHL.
	processor checkHalfCarryForDecrementAtHL."
	
	processor flags resetZ.
	processor flags resetH.
	processor flags setN.
	