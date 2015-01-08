building presentations
followIn: aComposite forSession: aSession forPoduction: aProduction
	
	aComposite list
		title: 'Follow';
		useExplicitNotNil;
		format: [ :parser | parser displayName ];
		display: [
			| parser |
			parser := aSession rootParser class new.
			parser followSets
				at: (parser productionAt: aProduction)
				ifAbsent: [ Array with: nil asParser ] ]