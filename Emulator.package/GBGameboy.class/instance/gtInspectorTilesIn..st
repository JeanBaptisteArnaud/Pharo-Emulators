gt-inspector
gtInspectorTilesIn: composite
     <gtInspectorPresentationOrder: 3>
    | morphPresentation |
	morphPresentation := composite morph.
	morphPresentation 
		title: 'Screen';
		display: [(self screen instVarNamed: 'screen')].
	
	morphPresentation := composite morph.
	morphPresentation 
		title: 'BGMap0';
		display: [(self screen formTileMap0 )].	
		
	morphPresentation := composite morph.
	morphPresentation 
		title: 'BGMap1';
		display: [(self screen formTileMap1 )].
		
	
