as yet unclassified
value
	| value |
		value := 0.
		VBlank ifTrue: [value := value bitAt: 1 put: 1].
		LCDSTAT ifTrue:[value := value bitAt: 2 put: 1].
		Timer ifTrue:[value := value bitAt: 3 put: 1].
		Serial ifTrue:[value := value bitAt: 4 put: 1].
		Joypad ifTrue:[value := value bitAt: 5 put: 1].
	^value