gt-inspector
gtInspectorSpritesIn: composite
     <gtInspectorPresentationOrder: 3>
    | morphPresentation |
	
	morphPresentation := composite morph.
	morphPresentation 
		title: 'Sprites';
		display: [(self screen spritesMorphs)].	
	