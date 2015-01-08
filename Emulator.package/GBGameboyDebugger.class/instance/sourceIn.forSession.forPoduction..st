building presentations
sourceIn: aComposite forSession: aSession forPoduction: aProduction

	aComposite smalltalkCode
		title: 'Source';
		useExplicitNotNil;
		display: [ self sourceCodeFrom: aSession rootParser class selector: aProduction ];
		smalltalkClass: [ aSession rootParser class ]