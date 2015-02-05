A GBSpriteFlags is that.


 Bit7   		OBJ-to-BG Priority (0=OBJ Above BG, 1=OBJ Behind BG color 1-3)
        			(Used for both BG and Window. BG color 0 is always behind OBJ)
 Bit6   		Y flip          (0=Normal, 1=Vertically mirrored)
 Bit5   		X flip          (0=Normal, 1=Horizontally mirrored)
 Bit4   		Palette number  **Non CGB Mode Only** (0=OBP0, 1=OBP1)
 Bit3   		Tile VRAM-Bank  **CGB Mode Only**     (0=Bank 0, 1=Bank 1)
 Bit2-0 		Palette number  **CGB Mode Only**     (OBP0-7)