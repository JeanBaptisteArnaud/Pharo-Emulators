building
debuggerTransmissionsIn: browser

	super debuggerTransmissionsIn: browser.
	
	browser transmit
		from: #stack port: #entity;
		to: #stream;
		when: [ :aSession | aSession notNil ];
		andShow: [ :aComposite | self streamIn: aComposite ].
		
	browser transmit
		from: #stack port: #entity;
		from: #stack port: #selection;
		to: #workspace;
		when: [ :aSession :aContext | (aSession notNil & aContext notNil) and: [ aSession rootParser class inheritsFrom: GBGameboy ] ];
		andShow: [ :aComposite :aSession :aContext | self workspaceIn: aComposite forSession: aSession forContext: aContext ].
	