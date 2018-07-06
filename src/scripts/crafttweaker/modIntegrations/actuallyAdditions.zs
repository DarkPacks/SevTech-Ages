/*
	SevTech: Ages Actually Additions Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.BallOfFur;
import mods.actuallyadditions.Empowerer;

/*
	Support:
		Atomic Reconstructor: http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/ActuallyAdditions/AtomicReconstructor/
		Ball of Fur: http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/ActuallyAdditions/BallOfFur/
		Empowerer: http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/ActuallyAdditions/Empowerer/

*/
function init() {
	// Atomic Reconstructor
	AtomicReconstructor.addRecipe(<mysticalagriculture:crafting>, <extraplanets:saturn:12>, 500000);
	AtomicReconstructor.removeRecipe(<actuallyadditions:item_color_lens>);

	// Crusher
	actuallyAdditions.addCrusher(<minecraft:diamond> * 9 , <minecraft:diamond_block>); // Diamond Block -> Diamonds
	actuallyAdditions.addCrusher(<minecraft:dye:4> * 9, <minecraft:lapis_block>); // Lapis Block -> Lapis
	actuallyAdditions.addCrusher(<minecraft:redstone> * 9, <minecraft:redstone_block>); // Redstone Block -> Redstone
	actuallyAdditions.addCrusher(<minecraft:emerald> * 9, <minecraft:emerald_block>); // Emerald Block -> Emerald
	actuallyAdditions.addCrusher(<minecraft:prismarine_shard> * 4, <minecraft:prismarine>); // Prismarine -> Prismarine Shard

	// Ball of Fur

	// Removing items from Balls of Fur
	var ballOfFurRemovalItems as IItemStack[] = [
		<minecraft:diamond>,
		<minecraft:ender_pearl>,
		<minecraft:gold_ingot>,
		<minecraft:iron_ingot>,
		<minecraft:leather>
	];
	for item in ballOfFurRemovalItems {
		BallOfFur.removeReturn(item);
	}

	// Empowerer
	Empowerer.addRecipe(<mysticalagriculture:crafting:5> * 4, <minecraft:prismarine_shard>,
		<stevescarts:modulecomponents:45>, <extraplanets:jupiter:4>, <mysticalagriculture:crafting>, <extraplanets:neptune:6>,
		5000, 200,  [0.698, 0.870, 0.960]
	);
}
