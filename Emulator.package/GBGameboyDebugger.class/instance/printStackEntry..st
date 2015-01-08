printing/formatting
printStackEntry: aContext

	^ (self session isPPParser: aContext receiver)
		ifTrue: [ 
			String streamContents: [:stream | 
				| str |
				
				stream nextPutAll: aContext receiver class name.
				aContext methodClass == aContext receiver class 
					ifFalse: [
						stream nextPut: $(.
						stream nextPutAll: aContext methodClass name.
						stream nextPut: $) ].
				stream nextPut: $(.
				aContext receiver printNameOn: stream.
				stream nextPut: $).
				stream nextPutAll: '>>'.
				
				str := super printStackEntry: aContext.
				str := str allButFirst: (str indexOf: $> ifAbsent: [ -1 ]) + 1.
				stream nextPutAll: str ]  ]
		ifFalse: [ super printStackEntry: aContext ]
	