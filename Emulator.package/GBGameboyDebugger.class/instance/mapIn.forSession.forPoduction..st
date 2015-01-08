building presentations
mapIn: aComposite forSession: aSession forPoduction: aProduction

	self class environment at: #GLMRoassalPresentation ifPresent: [ :cls |
		aComposite roassal
			title: 'Map';
			useExplicitNotNil;
			painting: [ :view |
				(self production: #start from: aSession rootParser class)
					viewAllNamedParsersWithSelection: (Array with: aProduction)
					previewing: [:eachParser | self sourceCodeFrom: aSession rootParser class selector: eachParser name ]
					on: view ] ]	
