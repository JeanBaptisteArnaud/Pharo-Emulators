opcode
opCodeList
	^cache ifNil: [cache := self createReadOpcodeLsit ].