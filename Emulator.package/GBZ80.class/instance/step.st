public
step
| op cnt |
cnt := 1. 
 	op := mmu rb:(self pc value).
	self incPc.
	(opCodesTable at: (op + 1)) interpret. 
	(cnt = 100)
		ifTrue:  [Processor yield. cnt := 1.] 
		ifFalse: [cnt :=  cnt + 1.].
	