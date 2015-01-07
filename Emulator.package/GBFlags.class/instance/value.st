as yet unclassified
value
	| value |
		value := 0.
		zero ifTrue: [value bitAt: 1 put: 1].
		sub ifTrue:[value bitAt: 2 put: 1].
		carry ifTrue:[value bitAt: 3 put: 1].
		halfCarry ifTrue:[value bitAt: 4 put: 1].
		interupt ifTrue:[value bitAt: 5 put: 1].
	^value