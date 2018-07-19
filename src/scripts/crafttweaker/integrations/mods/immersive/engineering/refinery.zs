/*
	SevTech: Ages Immersive Engineering Refinery Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.immersiveengineering.Refinery;

function init() {
	Refinery.addRecipe(<liquid:fuel> * 100, <liquid:liquidoxygen> * 250, <liquid:kerosene> * 100, 2048);
	Refinery.addRecipe(<liquid:fuel> * 100, <liquid:oxygen> * 250, <liquid:kerosene> * 100, 2048);
}
