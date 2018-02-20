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
//TODO: The mod SHOULD be updating to allow a higher energy requirement for the reconstructor. This value needs to be increased to 500k at that time
AtomicReconstructor.addRecipe(<mysticalagriculture:crafting>, <extraplanets:emerald_grit>, 500000);
AtomicReconstructor.addRecipe(<mysticalagriculture:crafting>, <extraplanets:candy_blocks:1>, 500000);

/*
	Empowerer

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/ActuallyAdditions/Empowerer/
*/
Empowerer.addRecipe(<mysticalagriculture:crafting:5> * 4, <minecraft:prismarine_shard>,
	<stevescarts:modulecomponents:45>, <extraplanets:jupiter:4>, <mysticalagriculture:crafting>, <extraplanets:diamond_grit>,
	5000, 200,  [0.698, 0.870, 0.960]
);
