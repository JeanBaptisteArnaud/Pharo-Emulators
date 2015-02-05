as yet unclassified
value: aValue
	value := aValue.
	sprite palette: (aValue bitAt: 5). 
	sprite x: (aValue bitAt: 6).
	sprite y: (aValue bitAt: 7).
	((aValue bitAt: 8) = 0) 
		ifTrue: [sprite frontBG]
		ifFalse:[sprite aboveBG].
	sprite reCachingMyself.	
	