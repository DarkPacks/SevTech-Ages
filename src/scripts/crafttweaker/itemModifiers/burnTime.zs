/*
	SevTech: Ages Burn Time & Temperature Modification Script

	This script allows modification of burn times and temperatures of liquids.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import scripts.crafttweaker.craftingUtils;

function init() {
	// Gasoline
	<liquid:gasoline>.definition.temperature = 350;
	furnace.setFuel(craftingUtils.getBucketIngredient(<liquid:gasoline>), 75000);
}
