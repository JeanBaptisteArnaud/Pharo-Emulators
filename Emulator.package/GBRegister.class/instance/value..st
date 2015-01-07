public
value: anObject
	anObject ifNil:[Halt now].
	anObject isInteger not ifTrue:[
		anObject isFlag 
			ifTrue:[
			previousValue := value.
			value := anObject value.  ]
			ifFalse:[Halt now.]]
		ifFalse:[
	previousValue := value.
	value := anObject.  ].
	
