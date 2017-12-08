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
mods.immersiveengineering.AlloySmelter.addRecipe(metals.blackIron.ingot, <embers:dust_ash>, metals.iron.ingot, 600);

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

/*
	Squeezer
*/
mods.immersiveengineering.Squeezer.removeItemRecipe(<minecraft:leather>); //Remove Rotten Flesh -> Leather
