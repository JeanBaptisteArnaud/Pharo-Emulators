accessing
printOn: aStream
	| hexValue  |
	hexValue := self value hex copyFrom: 4 to: self value hex size.
	aStream
		nextPutAll: (register1 registerName,register2 registerName);
		nextPutAll: ' : ';
		nextPutAll: hexValue.
		
