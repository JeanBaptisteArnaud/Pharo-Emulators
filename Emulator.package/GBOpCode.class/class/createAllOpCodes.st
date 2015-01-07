generating
createAllOpCodes
	| cnt |
	cnt := 1.
	self opCodesList do:[:e |
		self createSubclass: ('ToDestroy',e) asSymbol instructionValue: cnt.
		cnt := cnt + 1.].