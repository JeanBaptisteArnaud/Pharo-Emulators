building presentations
exampleIn: aComposite forSession: aSession forPoduction: aProduction

	aComposite text
		title: 'Example';
		useExplicitNotNil;
		display: [ (self production: aProduction from: aSession rootParser class) example ];
		act: [:text | text update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Generate another one'