public
printOn: aStream
	| hexValue  | 
	hexValue := self value hex copyFrom: 4 to: self value hex size.
	aStream
		nextPutAll: name; 
		nextPutAll: ' : ';
		nextPutAll: hexValue.