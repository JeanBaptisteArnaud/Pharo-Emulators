initialize
initializePresenter
	super initializePresenter.
	"It is debug tool I do not to break encapsulation for the rest of the project then reflection"
	memory items: (self prepareMemory: ((gb instVarNamed: 'mmu' ))).
	self Bproceed label: 'Proceed'; action: [self proceed ].
	self Bstep label: 'Step'; action: [self stepOpCode ].
	self Bstop label: 'Stop'; action: [self stop ].