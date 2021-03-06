as yet unclassified
debuggerTransmissionsIn: browser

	browser transmit
		fromOutsideEntityPort;
		to: #stack;
		andShow: [ :composite | self stackIn: composite ].
	browser transmit
		from: #stack port: #entity;
		to: #stack port: #selection;
		when: [ :session | session notNil ];
		transformed: [:session | session context].
	browser transmit "need a method call when the selection is changed"
		from: #stack port: #selection;
		to: #stack port: #action;
		transformed: [ :context | 
			self selectionChanged: context ].
	browser transmit
		from: #stack port: #selection;
		to: #inspector;
		andShow: [ :composite | self inspectorIn: composite ] 
