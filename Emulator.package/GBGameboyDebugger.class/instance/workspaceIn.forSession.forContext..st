building presentations
workspaceIn: aComposite forSession: aSession forContext: aContext
	| targetParser nameProperty |
	
	targetParser := (aContext locateTopNamedPPParser) 
		ifNil: [ aSession rootParser ] 
		ifNotNil: [ :parserContext | parserContext receiver ].
	nameProperty := targetParser propertyAt: 'name' ifAbsent: [ nil ].
	
	self sourceIn: aComposite forSession: aSession forPoduction: nameProperty.
	self graphIn: aComposite forSession: aSession forPoduction: nameProperty.
	self mapIn: aComposite forSession: aSession forPoduction: nameProperty.
	self exampleIn: aComposite forSession: aSession forPoduction: nameProperty.
	self firstIn: aComposite forSession: aSession forPoduction: nameProperty.
	self followIn: aComposite forSession: aSession forPoduction: nameProperty.