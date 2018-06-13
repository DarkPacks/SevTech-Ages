import crafttweaker.item.IItemStack;

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.BallOfFur;
import mods.actuallyadditions.Empowerer;

//For Future Ref. Coffee maker custom recipes
//Actually mods.actuallyadditions.Coffee.remove(input);

/*
	Ball of Fur

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/ActuallyAdditions/BallOfFur/
*/
//Removing items from Balls of Fur
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

/*
	Atomic Reconstructor

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/ActuallyAdditions/AtomicReconstructor/
*/
AtomicReconstructor.addRecipe(<mysticalagriculture:crafting>, <extraplanets:saturn:12>, 500000);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_color_lens>);

/*
	Empowerer

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/ActuallyAdditions/Empowerer/
*/
Empowerer.addRecipe(<mysticalagriculture:crafting:5> * 4, <minecraft:prismarine_shard>,
	<stevescarts:modulecomponents:45>, <extraplanets:jupiter:4>, <mysticalagriculture:crafting>, <extraplanets:neptune:6>,
	5000, 200,  [0.698, 0.870, 0.960]
);

/*
	Crusher
*/
actuallyAdditions.addCrusher(<minecraft:diamond> * 9 , <minecraft:diamond_block>); // Diamond Block -> Diamonds
actuallyAdditions.addCrusher(<minecraft:dye:4> * 9, <minecraft:lapis_block>); // Lapis Block -> Lapis
actuallyAdditions.addCrusher(<minecraft:redstone> * 9, <minecraft:redstone_block>); // Redstone Block -> Redstone
actuallyAdditions.addCrusher(<minecraft:emerald> * 9, <minecraft:emerald_block>); // Emerald Block -> Emerald
actuallyAdditions.addCrusher(<minecraft:prismarine_shard> * 4, <minecraft:prismarine>); // Prismarine -> Prismarine Shard
