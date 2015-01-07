as yet unclassified
behavior
	condition value ifTrue: [ processor setPc: processor wordMemoryAtPc. tick := 16.]
 					ifFalse: [ processor incPc;incPc. tick := 12.].
 