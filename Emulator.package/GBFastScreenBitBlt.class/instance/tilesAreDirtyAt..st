dirty mechanism
tilesAreDirtyAt: tilesIndex
	tilesDirty := true.
      updateTilesList at: (tilesIndex + 1) put: true.
