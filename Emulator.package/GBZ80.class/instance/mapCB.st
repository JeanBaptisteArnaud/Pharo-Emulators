tools
mapCB
| op |
	
	"debugger ifNotNil:[debugger makeSnapshot ]. "
 	op := mmu rb:(self pc value).
	self incPc.
	^(extendedOpCodesTable at: (op + 1)) interpret.               
