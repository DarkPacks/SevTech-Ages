/*
	SevTech: Ages Immersive Engineering Squeezer Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.immersiveengineering.Squeezer;

function init() {
	Squeezer.removeItemRecipe(<minecraft:leather:0>); // Remove Rotten Flesh -> Leather

	// Rustic recipes to make people "jump less" Kappa. Thanks to @iffonox!
	Squeezer.addRecipe(null, <liquid:wildberryjuice> * 250, <rustic:wildberries>, 2048);
	Squeezer.addRecipe(null, <liquid:oliveoil> * 250, <rustic:olives>, 2048);
	Squeezer.addRecipe(null, <liquid:honey> * 250, <rustic:honeycomb>, 2048);
	Squeezer.addRecipe(null, <liquid:grapejuice> * 250, <rustic:grapes>, 2048);
	Squeezer.addRecipe(null, <liquid:applejuice> * 250, <minecraft:apple>, 2048);
	Squeezer.addRecipe(<minecraft:sugar> * 2, <liquid:water> * 250, <minecraft:reeds>, 2048);
}
