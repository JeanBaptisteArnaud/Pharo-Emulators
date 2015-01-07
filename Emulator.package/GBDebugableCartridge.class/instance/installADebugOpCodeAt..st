debugSupport
installADebugOpCodeAt: addr
	self wb: addr value: ((self rb: addr)<<8).
	installedOpcode add: addr.