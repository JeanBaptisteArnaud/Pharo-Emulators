tools
createMemoryMap
	| o |
	"Maybe not consistent I use it just for debug"
	o := OrderedCollection new.
	0 to: 16rFFFF do:[:e | [
			(self rb: e) isInteger ifTrue:[o add: (self rb: e)] ifFalse:[o add: 0]] on: Error do:[o add: 0]].
	^o