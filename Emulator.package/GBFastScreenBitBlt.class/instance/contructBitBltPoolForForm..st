bitblt
contructBitBltPoolForForm: destForm
	| bitBltPool |
	bitBltPool := Array new: 1024.
	1 to: 1024 do:[:each | 
		bitBltPool at: each put: (
			BitBlt 
			destForm: destForm
			sourceForm: self dummyForm
			fillColor: Color white 
			combinationRule: Form over 
			destOrigin: (self originFromIndex: each)
			sourceOrigin: 0@0 
			extent: 8@8 
			clipRect: (0@0 extent: 256@256)).
		].
	^bitBltPool