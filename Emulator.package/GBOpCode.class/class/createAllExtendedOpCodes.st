generating
createAllExtendedOpCodes
	| cnt |
	cnt := 1.
	self extendedOpCodesList do:[:e |
		(Smalltalk classNamed: ('GB',e)) ifNil:[
			self createExtendSubclass: ('GB',e) asSymbol instructionValue: cnt.].
		cnt := cnt + 1.].