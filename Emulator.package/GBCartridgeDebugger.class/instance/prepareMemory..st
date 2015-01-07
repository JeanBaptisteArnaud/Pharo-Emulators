initialize
prepareMemory: ammu
	| previous value pc | 
	previous := 0. pc := 0.
	^(ammu createMemoryMap) collect:[:e |
		value := (previous = 16rcb) 
			ifTrue:[
				GBDebugOpCode new
					opcode:  (((gb instVarNamed: 'processor') instVarNamed: 'extendedOpCodesTable') at: (e + 1));
					pc: (pc := pc + 1);
					isExtend: true.]
			ifFalse:[  
				GBDebugOpCode new
					opcode:(((gb instVarNamed: 'processor') instVarNamed: 'opCodesTable') at: (e + 1));
					pc: (pc := pc + 1);
					isExtend: false].
		previous := e.
		value ]