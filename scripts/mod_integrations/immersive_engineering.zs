import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Squeezer;

/*
	Alloy Smelter
*/
//Black Iron Creation
AlloySmelter.addRecipe(metals.blackIron.ingot.firstItem, <actuallyadditions:item_dust:7>, metals.iron.ingot, 600);

//Invar must be in Arc Furnace
AlloySmelter.removeRecipe(metals.invar.ingot.firstItem);

//Add bronze recipe
AlloySmelter.removeRecipe(metals.bronze.ingot.firstItem);
AlloySmelter.addRecipe(metals.bronze.ingot.firstItem * 4, metals.copper.ingot * 3, metals.tin.ingot, 600);
AlloySmelter.addRecipe(metals.bronze.ingot.firstItem * 4, metals.copper.ingot * 3, metals.tin.dust, 600);
AlloySmelter.addRecipe(metals.bronze.ingot.firstItem * 4, metals.copper.dust * 3, metals.tin.ingot, 600);
AlloySmelter.addRecipe(metals.bronze.ingot.firstItem * 4, metals.copper.dust * 3, metals.tin.dust, 600);

/*
	Metal Press

	//OutputStack, InputStack, MoldStack, Energy, SizeValue
	mods.immersiveengineering.MetalPress.addRecipe(<minecraft:stone_slab> * 2, <minecraft:stone>, <ImmersiveEngineering:mold>, 500, 50);
	//OutputStack
	mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:30>);
	//MoldStack
	mods.immersiveengineering.MetalPress.removeRecipeByMold(<ImmersiveEngineering:mold:2>);
*/
MetalPress.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder>, <immersiveengineering:mold:2>, 500, 4);

MetalPress.addRecipe(metals.compressedIron.ingot.firstItem * 4, metals.iron.block.firstItem, <immersiveengineering:mold:5>, 2000, 1);

/*
	Squeezer
*/
Squeezer.removeItemRecipe(<minecraft:leather>); //Remove Rotten Flesh -> Leather

/*
	Crusher

	IItemStack output, IIngredient input, int totalEnergy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance
*/
Crusher.addRecipe(<primal:tannin_ground> * 2, <ore:barkWood>, 3000); //Ground Resin from bark
Crusher.addRecipe(<betterwithmods:material:3> * 2, <betterwithmods:material:2>, 3000);
Crusher.addRecipe(<pickletweaks:dye_powder:13> * 2, <minecraft:dye:2>, 3000);
Crusher.addRecipe(<minecraft:dye:15> * 9, <minecraft:bone_block>, 3000);

Crusher.removeRecipe(<actuallyadditions:item_dust:4>);
Crusher.addRecipe(<pickletweaks:dye_powder:11> * 2, <minecraft:dye:4>, 3000);

Crusher.addRecipe(<pickletweaks:dye_powder:14> * 2, <minecraft:dye:1>, 3000);
Crusher.addRecipe(<pickletweaks:dye_powder:14> * 1, <rustic:wildberries>, 3000);

Crusher.addRecipe(<minecraft:dye:1> * 4, <minecraft:red_flower>, 3000);

Crusher.addRecipe(<minecraft:sugar> * 2, <minecraft:reeds>, 3000);

Crusher.addRecipe(<betterwithmods:material:15>, <minecraft:netherrack>, 3000); //Ground netherrack

Crusher.addRecipe(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, 3000); //Fluix dust can be made in crusher

Crusher.addRecipe(metals.tin.dust.firstItem * 2, <ore:oreTin>, 3000); //Tin ore to dust

Crusher.addRecipe(<ore:dustCoal>.firstItem, <ore:coal>, 3000); //Coal to coal dust

/*
	Arc Furnace
*/
//==============================================================
//Add Steve's carts recipes
//Lump of Galgador
ArcFurnace.addRecipe(<stevescarts:modulecomponents:46> * 2, metals.platinum.block.firstItem, slag, 200, 512,
	[<minecraft:glowstone_dust> * 3, <stevescarts:modulecomponents:45> * 3, <stevescarts:modulecomponents:21> * 2]
);
//Stabilized Metal
ArcFurnace.addRecipe(<stevescarts:modulecomponents:21> * 5, <stevescarts:modulecomponents:20>, slag, 200, 512,
	[metals.iron.ingot.firstItem * 5, <stevescarts:modulecomponents:19> * 3]
);

//==============================================================
//Add recipes for alloying that is removed by metals script
//Also adding slag as an output to them all

//Steel
ArcFurnace.addRecipe(metals.steel.ingot.firstItem, metals.iron.ingot, slag, 400, 512, [<ore:dustCoke>]);
ArcFurnace.addRecipe(metals.steel.ingot.firstItem, metals.iron.dust, slag, 400, 512, [<ore:dustCoke>]);

//Constantan
ArcFurnace.addRecipe(metals.constantan.ingot.firstItem * 2, metals.copper.ingot, slag, 100, 512, [metals.nickel.dust]);
ArcFurnace.addRecipe(metals.constantan.ingot.firstItem * 2, metals.copper.dust, slag, 100, 512, [metals.nickel.dust]);
ArcFurnace.addRecipe(metals.constantan.ingot.firstItem * 2, metals.nickel.ingot, slag, 100, 512, [metals.copper.dust]);
ArcFurnace.addRecipe(metals.constantan.ingot.firstItem * 2, metals.nickel.dust, slag, 100, 512, [metals.copper.dust]);

//Electrum
ArcFurnace.addRecipe(metals.electrum.ingot.firstItem * 2, metals.gold.ingot, slag, 100, 512, [metals.silver.dust]);
ArcFurnace.addRecipe(metals.electrum.ingot.firstItem * 2, metals.gold.dust, slag, 100, 512, [metals.silver.dust]);
ArcFurnace.addRecipe(metals.electrum.ingot.firstItem * 2, metals.silver.ingot, slag, 100, 512, [metals.gold.dust]);
ArcFurnace.addRecipe(metals.electrum.ingot.firstItem * 2, metals.silver.dust, slag, 100, 512, [metals.gold.dust]);

//Invar
ArcFurnace.addRecipe(metals.invar.ingot.firstItem * 3, metals.nickel.ingot, slag, 100, 512, [metals.iron.dust * 2]);
ArcFurnace.addRecipe(metals.invar.ingot.firstItem * 3, metals.nickel.dust, slag, 100, 512, [metals.iron.dust * 2]);

//Ender Utilities
ArcFurnace.addRecipe(<enderutilities:enderpart> * 4, <minecraft:ender_pearl>, slag, 100, 512, [<quark:biotite> * 8]);
ArcFurnace.addRecipe(<enderutilities:enderpart:1> * 4, <minecraft:ender_eye>, slag, 100, 512, [<minecraft:chorus_fruit> * 8]);
ArcFurnace.addRecipe(<enderutilities:enderpart:2> * 2, <minecraft:ender_eye>, slag, 100, 512, [<minecraft:purpur_block> * 4, <minecraft:end_rod> * 2, <minecraft:shulker_shell>]);
ArcFurnace.addRecipe(<enderutilities:enderpart:20> * 4, <minecraft:ender_pearl>, slag, 100, 512, [<minecraft:end_rod> * 4]);

//Refined Energistics 2.3333333 <- YA! YOU LIKE THAT
ArcFurnace.addRecipe(<refinedstorage:quartz_enriched_iron> * 4, metals.iron.ingot * 3, slag, 100, 512, [<appliedenergistics2:material>]);

/* TODO: Commented out because tinker's adds these recipes to the arc furnace way later in init stages so CrT cant remove them https://github.com/BluSunrize/ImmersiveEngineering/issues/2632
//Aluminum Brass
ArcFurnace.addRecipe(metals.aluminumBrass.ingot.firstItem * 4, metals.copper.ingot, slag, 100, 512, [metals.aluminum.dust * 3]);
ArcFurnace.addRecipe(metals.aluminumBrass.ingot.firstItem * 4, metals.copper.dust, slag, 100, 512, [metals.aluminum.dust * 3]);

//Manyullyn
ArcFurnace.addRecipe(metals.manyullyn.ingot.firstItem, metals.cobalt.ingot, slag, 300, 512, [metals.ardite.ingot]);
ArcFurnace.addRecipe(metals.manyullyn.ingot.firstItem, metals.ardite.ingot, slag, 300, 512, [metals.cobalt.ingot]);
*/

/*
	Mixer

	mods.immersiveengineering.Mixer.addRecipe(ILiquidStack output, ILiquidStack fluidInput, IIngredient[] itemInputs, int energy);
*/
Mixer.addRecipe(<liquid:blueslime> * 500, <liquid:slime> * 500, [<pickletweaks:dye_powder:11>, <natura:nether_glowshroom:1>], 50);
Mixer.addRecipe(<liquid:purpleslime> * 500, <liquid:slime> * 500, [<pickletweaks:dye_powder:10>, <nex:item_crystal_amethyst>], 50);

/*
	Refinery

	mods.immersiveengineering.Refinery.addRecipe(ILiquidStack output, ILiquidStack input0, ILiquidStack input1, int energy);
*/
Refinery.addRecipe(<liquid:fuel>, <liquid:liquidoxygen>, <liquid:kerosene>, 2048);
