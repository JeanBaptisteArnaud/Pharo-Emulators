tools
map: int to: int2
	| ord |
	ord := OrderedCollection new.
	int to: int2 do:[:e | ord add: (self map at: (e + 1)) ].
	^ ord