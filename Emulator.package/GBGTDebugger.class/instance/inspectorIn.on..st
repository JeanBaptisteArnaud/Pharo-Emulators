as yet unclassified
inspectorIn: aComposite on: anObject
				
	^ ((self interruptedContext  findContextSuchThat: [:ctx|
		ctx receiver isKindOf: GBGameboy ])
		 ifNil: [ anObject ] 
		 ifNotNil: [ :gameboyContext | gameboyContext receiver ]) gtConstructDebuggerInspectorIn: aComposite for: self
	
	