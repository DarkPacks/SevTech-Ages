/*
	SevTech: Ages Cyclic Magic Integration Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.cyclicmagic.Hydrator;

import crafttweaker.item.IItemStack;

function init() {
    // Remove Red Sand recipe
    Hydrator.removeShapedRecipe(<minecraft:sand:1>);

    // Add Red Sand recipe using dye powder
    Hydrator.addRecipe(<minecraft:sand:1>, [<minecraft:sand:0>, <minecraft:sand:0>, <minecraft:sand:0>, <pickletweaks:dye_powder:14>] as IItemStack[], 25);
}