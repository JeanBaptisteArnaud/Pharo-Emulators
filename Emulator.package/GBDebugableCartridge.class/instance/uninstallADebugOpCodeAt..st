debugSupport
uninstallADebugOpCodeAt: addr
	self wb: addr value: ((self rb: addr)>>8).
	installedOpcode remove: addr.