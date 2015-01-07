as yet unclassified
createFormFrom: array
	| form increment |
	increment := 1.
	form := Form extent: 8@8 depth: 32.
	array do:[ :each | 
		each do:[:value | 
			form bits at: increment put: (self palette at: (value + 1)).
			increment := increment + 1.]].
	^form