/*
	SevTech: Ages Immersive Engineering Alloy Smelter Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
function init() {
	// Black Iron Creation
	immersiveEngineering.addAlloy(metals.blackIron.ingot.firstItem, <actuallyadditions:item_dust:7>, metals.iron.ingot);

	// Invar must be in Arc Furnace
	immersiveEngineering.removeAlloy(metals.invar.ingot.firstItem);

	// Add bronze recipe
	immersiveEngineering.removeAlloy(metals.bronze.ingot.firstItem);
	immersiveEngineering.addAlloy(metals.bronze.ingot.firstItem * 4, metals.copper.ingot * 3, metals.tin.ingot);
	immersiveEngineering.addAlloy(metals.bronze.ingot.firstItem * 4, metals.copper.ingot * 3, metals.tin.dust);
	immersiveEngineering.addAlloy(metals.bronze.ingot.firstItem * 4, metals.copper.dust * 3, metals.tin.ingot);
	immersiveEngineering.addAlloy(metals.bronze.ingot.firstItem * 4, metals.copper.dust * 3, metals.tin.dust);

	// Invar
	immersiveEngineering.addAlloy(metals.invar.ingot.firstItem * 3, metals.iron.ingot * 2, metals.nickel.ingot);
	immersiveEngineering.addAlloy(metals.invar.ingot.firstItem * 3, metals.iron.ingot * 2, metals.nickel.dust);
	immersiveEngineering.addAlloy(metals.invar.ingot.firstItem * 3, metals.iron.dust * 2, metals.nickel.ingot);
	immersiveEngineering.addAlloy(metals.invar.ingot.firstItem * 3, metals.iron.dust * 2, metals.nickel.dust);
}
