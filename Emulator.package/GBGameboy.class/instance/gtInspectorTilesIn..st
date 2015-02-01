gt-inspector
gtInspectorTilesIn: composite
     <gtInspectorPresentationOrder: 3>
    | morphPresentation |
	
	morphPresentation := composite morph.
	morphPresentation 
		title: 'Graphics';
		display: [(self screen graphicsMorphs)].	
	