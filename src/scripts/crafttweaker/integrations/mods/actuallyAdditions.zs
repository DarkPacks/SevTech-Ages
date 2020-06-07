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
	AtomicReconstructor.addRecipe(<mysticalagriculture:crafting:0>, <extraplanets:saturn:12>, 500000);
	AtomicReconstructor.removeRecipe(<actuallyadditions:item_color_lens:0>);

	// Crusher
	actuallyAdditions.addCrusher(<minecraft:diamond:0> * 9 , <minecraft:diamond_block:0>); // Diamond Block -> Diamonds
	actuallyAdditions.addCrusher(<minecraft:dye:4> * 9, <minecraft:lapis_block:0>); // Lapis Block -> Lapis
	actuallyAdditions.addCrusher(<minecraft:redstone:0> * 9, <minecraft:redstone_block:0>); // Redstone Block -> Redstone
	actuallyAdditions.addCrusher(<minecraft:emerald:0> * 9, <minecraft:emerald_block:0>); // Emerald Block -> Emerald
	actuallyAdditions.addCrusher(<minecraft:prismarine_shard:0> * 4, <minecraft:prismarine:0>); // Prismarine -> Prismarine Shard
	actuallyAdditions.removeCrusher(<minecraft:sugar:0>); // Remove the bad Rice Recipe
	actuallyAdditions.addCrusher(<betterwithaddons:japanmat:4>, <actuallyadditions:item_food:16>); // Rice -> Rice Flower
	actuallyAdditions.removeCrusher(<actuallyadditions:item_dust:4>); // Remove Crushed Lapis
	actuallyAdditions.addCrusher(<minecraft:dye:15> * 3, <death_compass:death_compass>.withTag({})); // Death Compass -> Bone Meal

	// Ball of Fur

	// Removing items from Balls of Fur
	var ballOfFurRemovalItems as IItemStack[] = [
		<minecraft:diamond:0>,
		<minecraft:ender_pearl:0>,
		<minecraft:gold_ingot:0>,
		<minecraft:iron_ingot:0>,
		<minecraft:leather:0>
	];
	for item in ballOfFurRemovalItems {
		BallOfFur.removeReturn(item);
	}

	// Empowerer
	Empowerer.addRecipe(<mysticalagriculture:crafting:5> * 4, <minecraft:prismarine_shard:0>,
		<stevescarts:modulecomponents:45>, <extraplanets:jupiter:4>, <mysticalagriculture:crafting:0>, <extraplanets:neptune:6>,
		5000, 200,  [0.698, 0.870, 0.960]
	);
}
