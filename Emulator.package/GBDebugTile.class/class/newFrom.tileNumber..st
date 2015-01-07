as yet unclassified
newFrom: value tileNumber: integer
	^self basicNew
		form: (self createFormFrom: value);
		tileNumber: integer;
		yourself.
