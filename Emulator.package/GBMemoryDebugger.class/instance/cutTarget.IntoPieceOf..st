infrastructure
cutTarget: aMemoryChunk IntoPieceOf: integer

	| loop  localCount  result |
	result := OrderedCollection new.
	result add: {'Address'. '|'. '1'. '2'. '3'. '4'. '5'. '6'. '7'. '8'. '9'. '10'. '11'. '12'. '13'. '14'. '15'. '16'. } asOrderedCollection.	
	localCount := 1.
	
	loop :=OrderedCollection new.
	loop add: 0 hex.
	loop add: '|'.
		
	1 to: aMemoryChunk size do:[:e |
		(localCount <= integer) 
			ifTrue:[
				loop add: (aMemoryChunk at: e) asString.
				localCount := localCount + 1.] 
			ifFalse:[	
				result add: loop.
				loop :=OrderedCollection new.
				loop add: (e - 1) hex.
				loop add: '|'.
				loop add: (aMemoryChunk at: e) asString.
				localCount := 2.]].
	^result