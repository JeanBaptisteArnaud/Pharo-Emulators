as yet unclassified
printOn: aStream
	aStream
		nextPutAll: 'C';
		nextPutAll: ' : ';
		nextPutAll: carry asBit printString;
		nextPutAll: ' ';
		
		nextPutAll: 'Z';
		nextPutAll: ' : ';
		nextPutAll:  zero asBit printString;
		nextPutAll: ' ';
		
		nextPutAll: 'N';
		nextPutAll: ' : ';
		nextPutAll:  sub asBit printString;
		nextPutAll: ' ';
		
		nextPutAll: 'H';
		nextPutAll: ' : ';
		nextPutAll:  halfCarry  asBit printString.
