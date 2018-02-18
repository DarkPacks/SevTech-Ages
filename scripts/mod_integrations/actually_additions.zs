import crafttweaker.item.IItemStack;

//For Future Ref. Coffee maker custom recipes
//Actually mods.actuallyadditions.Coffee.remove(input);

//Removing items from Balls of Fur
var ballOfFurRemovalItems = [
	<minecraft:diamond>,
	<minecraft:ender_pearl>,
	<minecraft:leather>,
	<minecraft:gold_ingot>,
	<minecraft:iron_ingot>
] as IItemStack[];

for item in ballOfFurRemovalItems {
	mods.actuallyadditions.BallOfFur.removeReturn(item);
}

//The mod SHOULD be updating to allow a higher energy requirement
//for the reconstructor. This value needs to be increased to 500k at that time

//mods.actuallyadditions.AtomicReconstructor.addRecipe(IItemStack output, IItemStack input, int energyUsed);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mysticalagriculture:crafting>, <extraplanets:emerald_grit>, 250000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mysticalagriculture:crafting>, <extraplanets:candy_blocks:1>, 250000);



//mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time);
//mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, float[] particleColourArray);
mods.actuallyadditions.Empowerer.addRecipe(<mysticalagriculture:crafting:5> * 4, <minecraft:prismarine_shard>, <stevescarts:modulecomponents:45>, <extraplanets:jupiter:4>, <mysticalagriculture:crafting>, <extraplanets:diamond_grit>, 5000, 200,  [0.698, 0.870, 0.960]);
