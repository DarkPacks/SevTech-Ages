import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;

//Blast Furnace
//Smelting
//OutputStack, InputStack, Time in Ticks, SlagOutput
//mods.immersiveengineering.BlastFurnace.addRecipe(<ImmersiveEngineering:material:12>, <ImmersiveEngineering:material:11>, 4800, <ImmersiveEngineering:material:13>);
//OutputStack
//mods.immersiveengineering.BlastFurnace.removeRecipe(<ImmersiveEngineering:metal:7>);
//Fuel
//InputStack, Time in Ticks
//mods.immersiveengineering.BlastFurnace.addFuel(<ImmersiveEngineering:metal:17>, 1200);
//InputStack
//mods.immersiveengineering.BlastFurnace.removeFuel(<ImmersiveEngineering:material:6>);

//Black Iron Creation
mods.immersiveengineering.AlloySmelter.addRecipe(metals.blackIron.ingot.firstItem, <embers:dust_ash>, metals.iron.ingot, 600);

//Invar must be in Arc Furnace
mods.immersiveengineering.AlloySmelter.removeRecipe(metals.invar.ingot.firstItem);

/*
//Metal Press
//OutputStack, InputStack, MoldStack, Energy, SizeValue
mods.immersiveengineering.MetalPress.addRecipe(<minecraft:stone_slab> * 2, <minecraft:stone>, <ImmersiveEngineering:mold>, 500, 50);
//OutputStack
mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:30>);
//MoldStack
mods.immersiveengineering.MetalPress.removeRecipeByMold(<ImmersiveEngineering:mold:2>);
*/

mods.immersiveengineering.MetalPress.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder>, <immersiveengineering:mold:2>, 500, 4);

mods.immersiveengineering.MetalPress.addRecipe(metals.compressedIron.ingot.firstItem * 4, metals.iron.block.firstItem, <immersiveengineering:mold:5>, 2000, 1);

/*
	Squeezer
*/
mods.immersiveengineering.Squeezer.removeItemRecipe(<minecraft:leather>); //Remove Rotten Flesh -> Leather

/*
	Crusher
	IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance
*/
//Ground Resin from bark
Crusher.addRecipe(<primal:tannin_ground> * 2, <ore:barkWood>, 3000);

/*
	Arc Furnace
*/
//Add Steve's carts recipes
//Lump of Galgador
ArcFurnace.addRecipe(<stevescarts:modulecomponents:46> * 2, metals.platinum.block.firstItem, slag, 200, 512,
	[<minecraft:glowstone_dust> * 2, <stevescarts:modulecomponents:45> * 3, <stevescarts:modulecomponents:21> * 2]
);
//Stabilized Metal
ArcFurnace.addRecipe(<stevescarts:modulecomponents:21> * 5, metals.iron.ingot.firstItem * 5, slag, 200, 512,
	[<stevescarts:modulecomponents:20>, <stevescarts:modulecomponents:19> * 3]
);
