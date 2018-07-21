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
}
