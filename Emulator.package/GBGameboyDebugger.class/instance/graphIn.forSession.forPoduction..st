building presentations
graphIn: aComposite forSession: aSession forPoduction: aProduction
	
	aComposite morph
		title: 'Graph';
		useExplicitNotNil;
		display: [ 
			| morph |
			morph := ScrollPane new.
			morph color: Color white.
			morph scroller addMorph: (self production: aProduction from: aSession rootParser class) morphicProduction.
			(morph allMorphs select: [ :each | 
				each class = StringMorph and: [ each color = Color blue ] ]) do: [ :each |
					each on: #click send: #execute to: 
						((GTPPStepToNextNamedProductionAction forDebugger: self)
							production: each contents) ].
			morph ] 