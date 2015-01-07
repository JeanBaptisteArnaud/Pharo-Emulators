as yet unclassified
bitAt: index put: theValue
	previousValue := value.
	value := value bitAt: index put: theValue. 