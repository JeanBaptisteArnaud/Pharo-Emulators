accessing
printOn: stream
	stream nextPutAll: self pc asString;
		nextPutAll: ' : ';
		nextPutAll: opcode class asString;
		nextPutAll: ' '.
		isExtend ifTrue:[stream nextPutAll: ' ext'].
		