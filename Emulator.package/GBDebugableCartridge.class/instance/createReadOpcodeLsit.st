opcode
createReadOpcodeLsit
	^currentReadBank collectWithIndex: [ :value :index |  
		GBDebugCartridgeEntry 
			forIndex: index
			andOpCode: (self opCodeFor: value)]. 
