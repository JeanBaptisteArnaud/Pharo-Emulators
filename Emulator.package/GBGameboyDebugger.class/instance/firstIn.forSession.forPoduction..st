building presentations
firstIn: aComposite forSession: aSession forPoduction: aProduction

	aComposite list
		title: 'First';
		useExplicitNotNil;
		display: [ (self production: aProduction from: aSession rootParser class) firstSet ];
		format: [ :parser | parser displayName ]