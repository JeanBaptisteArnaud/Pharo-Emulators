as yet unclassified
behavior
	| temp |
	
	temp := processor memoryAtPc.
	(temp > 127 ) ifTrue:[temp:= 0 - ((temp bitInvert + 1)&255)].
	(condition value ) ifTrue:[ 
		processor addToPc: temp. tick := 12.] 
	ifFalse:[tick := 8.].
