import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Squeezer;

/*
	Alloy Smelter

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Engineering/CraftTweaker_Support/Alloy_Smelter/
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

//Invar
AlloySmelter.addRecipe(metals.invar.ingot.firstItem * 3, metals.iron.ingot * 2, metals.nickel.ingot, 600);
AlloySmelter.addRecipe(metals.invar.ingot.firstItem * 3, metals.iron.ingot * 2, metals.nickel.dust, 600);
AlloySmelter.addRecipe(metals.invar.ingot.firstItem * 3, metals.iron.dust * 2, metals.nickel.ingot, 600);
AlloySmelter.addRecipe(metals.invar.ingot.firstItem * 3, metals.iron.dust * 2, metals.nickel.dust, 600);

/*
	Metal Press

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Engineering/CraftTweaker_Support/Metal_Press/
*/
MetalPress.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder>, <immersiveengineering:mold:2>, 500, 4);

MetalPress.addRecipe(metals.compressedIron.ingot.firstItem * 4, metals.iron.block.firstItem, <immersiveengineering:mold:5>, 2000, 1);

MetalPress.addRecipe(<pickletweaks:ppm4:2> * 4, <galacticraftcore:item_basic_moon>, <immersiveengineering:mold:4>, 500, 1);

//Coal and Charcoal Blocks / Pieces
MetalPress.addRecipe(<minecraft:coal_block> * 1, <minecraft:coal>, <immersiveengineering:mold:6>, 500, 9);
MetalPress.addRecipe(<charcoalblock:charcoal_block> * 1, <minecraft:coal:1>, <immersiveengineering:mold:6>, 500, 9);

MetalPress.addRecipe(<minecraft:coal> * 9, <minecraft:coal_block>, <immersiveengineering:mold:7>, 500, 1);
MetalPress.addRecipe(<minecraft:coal:1> * 9, <charcoalblock:charcoal_block>, <immersiveengineering:mold:7>, 500, 1);

MetalPress.addRecipe(<minecraft:clay> * 1, <minecraft:clay_ball>, <immersiveengineering:mold:5>, 500, 4);

// Shadowfragment -> Shadowshard
MetalPress.addRecipe(<abyssalcraft:shadowshard> * 1, <abyssalcraft:shadowfragment>, <immersiveengineering:mold:6>, 500, 9);
// Shadowshard -> Shadowgem
MetalPress.addRecipe(<abyssalcraft:shadowgem> * 1, <abyssalcraft:shadowshard>, <immersiveengineering:mold:6>, 500, 9);
// Shadowshard -> Shadowfragment
MetalPress.addRecipe(<abyssalcraft:shadowfragment> * 9, <abyssalcraft:shadowshard>, <immersiveengineering:mold:7>, 500, 1);
// Shadowgem -> Shadowshard
MetalPress.addRecipe(<abyssalcraft:shadowshard> * 9, <abyssalcraft:shadowgem>, <immersiveengineering:mold:7>, 500, 1);
// Salt Dust -> Salt Block
MetalPress.addRecipe(<primal:salt_netjry_block> * 1, <primal:salt_dust_netjry>, <immersiveengineering:mold:5>, 500, 4);
MetalPress.addRecipe(<primal:ore_salt:1> * 1, <primal:salt_dust_fire>, <immersiveengineering:mold:5>, 500, 4);
MetalPress.addRecipe(<primal:ore_salt> * 1, <primal:salt_dust_rock>, <immersiveengineering:mold:5>, 500, 4);
MetalPress.addRecipe(<mekanism:saltblock> * 1, <mekanism:salt>, <immersiveengineering:mold:5>, 500, 4);
// Diamond Block
MetalPress.addRecipe(<minecraft:diamond_block> * 1, <minecraft:diamond>, <immersiveengineering:mold:6>, 500, 9);
// Lapis Block
MetalPress.addRecipe(<minecraft:lapis_block> * 1, <minecraft:dye:4>, <immersiveengineering:mold:6>, 500, 9);
// Redstone Block
MetalPress.addRecipe(<minecraft:redstone_block> * 1, <minecraft:redstone>, <immersiveengineering:mold:6>, 500, 9);
// Emerald Block
MetalPress.addRecipe(<minecraft:emerald_block> * 1, <minecraft:emerald>, <immersiveengineering:mold:6>, 500, 9);

/*
	Squeezer

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Engineering/CraftTweaker_Support/Squeezer/
*/
Squeezer.removeItemRecipe(<minecraft:leather>); //Remove Rotten Flesh -> Leather

/*
	Crusher

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Engineering/CraftTweaker_Support/Crusher/
*/
Crusher.removeRecipe(<actuallyadditions:item_dust:4>);

Crusher.addRecipe(<primal:tannin_ground> * 2, <ore:barkWood>, 3000); //Ground Resin from bark
Crusher.addRecipe(<betterwithmods:material:3> * 2, <betterwithmods:material:2>, 3000);
Crusher.addRecipe(<minecraft:dye:15> * 9, <minecraft:bone_block>, 3000);

Crusher.addRecipe(<minecraft:sugar> * 2, <minecraft:reeds>, 3000);

Crusher.addRecipe(<betterwithmods:material:15>, <minecraft:netherrack>, 3000); //Ground netherrack

Crusher.addRecipe(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, 3000); //Fluix dust can be made in crusher

Crusher.addRecipe(metals.spacePlatinum.dust.firstItem * 2, <ore:oreSpacePlatinum>, 3000); //Osmium ore to dust

Crusher.addRecipe(<ore:dustCoal>.firstItem, <ore:coal>, 3000); //Coal to coal dust

Crusher.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material>, 3000); //Certus Quartz to Certus Dust

Crusher.addRecipe(<horsepower:flour>, <minecraft:wheat>, 3000); //Wheat to Flour

Crusher.addRecipe(<primal:bone_knapp>, <primal:sharp_bone>, 3000); //Sharp Bone to Bone Knapp

Crusher.addRecipe(<minecraft:dye:15> * 2, <primal:shark_tooth>, 3000); //Sharp Bone to Bone Knapp

Crusher.addRecipe(<primal:salt_dust_netjry> * 4, <primal:salt_netjry_block>, 3000); // Netjry Salt to Netjry Salt
Crusher.addRecipe(<primal:salt_dust_rock> * 4, <primal:ore_salt>, 3000); // Halite Salt Ore to Halite Rock Salt
Crusher.addRecipe(<primal:salt_dust_fire> * 4, <primal:ore_salt:1>, 3000); // Fire Salt Ore to Fire Rock Salt
Crusher.addRecipe(<betterwithmods:material:37>, <minecraft:coal:1>, 3000); // Charcoal to Dust
Crusher.addRecipe(<ore:dustSalt>.firstItem * 4, <mekanism:saltblock>, 3000); // Salt Block -> Dust
Crusher.addRecipe(<minecraft:diamond> * 9, <minecraft:diamond_block>, 3000); // Diamond Block -> Diamonds
Crusher.addRecipe(<minecraft:dye:4> * 9, <minecraft:lapis_block>, 3000); // Lapis Block -> Lapis
Crusher.addRecipe(<minecraft:redstone> * 9, <minecraft:redstone_block>, 3000); // Redstone Block -> Redstone
Crusher.addRecipe(<minecraft:emerald> * 9, <minecraft:emerald_block>, 3000); // Emerald Block -> Emerald

/*
	Arc Furnace

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Engineering/CraftTweaker_Support/Arc_Furnace/
*/
//Quartz Glass
ArcFurnace.addRecipe(<appliedenergistics2:quartz_glass> * 4, <ore:blockGlass> * 4, null, 200, 512,
	[<ore:dustQuartz> * 5]
);
//Vanilla Glass
ArcFurnace.addRecipe(<minecraft:glass>, <minecraft:sand>, null, 150, 256);

//Vanilla Glass Panes
ArcFurnace.addRecipe(<minecraft:glass_pane>, <betterwithmods:sand_pile> * 2, null, 100, 150);

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
ArcFurnace.addRecipe(metals.steel.ingot.firstItem, metals.iron.ingot, slag, 300, 448, [<ore:dustCoke>]);

//Constantan
ArcFurnace.addRecipe(metals.constantan.ingot.firstItem * 2, metals.copper.ingot, slag, 100, 512, [metals.nickel.dust]);
ArcFurnace.addRecipe(metals.constantan.ingot.firstItem * 2, metals.nickel.ingot, slag, 100, 512, [metals.copper.dust]);

//Electrum
ArcFurnace.addRecipe(metals.electrum.ingot.firstItem * 2, metals.gold.ingot, slag, 100, 512, [metals.silver.dust]);
ArcFurnace.addRecipe(metals.electrum.ingot.firstItem * 2, metals.silver.ingot, slag, 100, 512, [metals.gold.dust]);

//Invar
ArcFurnace.addRecipe(metals.invar.ingot.firstItem * 3, metals.nickel.ingot, slag, 100, 512, [metals.iron.dust * 2]);

//Ender Utilities
ArcFurnace.addRecipe(<enderutilities:enderpart> * 4, <minecraft:ender_pearl>, slag, 100, 512, [<quark:biotite> * 8]);
ArcFurnace.addRecipe(<enderutilities:enderpart:1> * 4, <minecraft:ender_eye>, slag, 100, 512, [<minecraft:chorus_fruit> * 8]);
ArcFurnace.addRecipe(<enderutilities:enderpart:2> * 2, <minecraft:ender_eye>, slag, 100, 512, [<minecraft:purpur_block> * 4, <minecraft:end_rod> * 2, <minecraft:shulker_shell>]);
ArcFurnace.addRecipe(<enderutilities:enderpart:20> * 4, <minecraft:ender_pearl>, slag, 100, 512, [<minecraft:end_rod> * 4]);

// Black Iron
ArcFurnace.addRecipe(<extendedcrafting:material>, metals.iron.ingot, slag, 100, 512, [<actuallyadditions:item_dust:7>]);

//Refined Energistics 2.3333333 <- YA! YOU LIKE THAT
ArcFurnace.addRecipe(<refinedstorage:quartz_enriched_iron> * 4, metals.iron.ingot * 3, slag, 100, 512, [<appliedenergistics2:material>]);

//Bronze Alloying
ArcFurnace.addRecipe(metals.bronze.ingot.firstItem * 4, metals.copper.ingot * 3, slag, 100, 512, [metals.tin.dust]);

//Redstone Alloy
ArcFurnace.addRecipe(metals.redstoneAlloy.ingot.firstItem * 2, metals.constantan.ingot, slag, 100, 512, [<minecraft:glowstone_dust>, <minecraft:redstone>]);

//Modularium
ArcFurnace.addRecipe(metals.modularium.ingot.firstItem * 2, metals.aluminum.ingot, slag, 100, 512, [metals.iron.dust, <minecraft:redstone>]);
ArcFurnace.addRecipe(metals.modularium.ingot.firstItem * 2, metals.iron.ingot, slag, 100, 512, [metals.aluminum.dust, <minecraft:redstone>]);

/* TODO: Commented out because tinker's adds these recipes to the arc furnace way later in init stages so CrT cant remove them https://github.com/BluSunrize/ImmersiveEngineering/issues/2632
//Aluminum Brass
ArcFurnace.addRecipe(metals.aluminumBrass.ingot.firstItem * 4, metals.copper.ingot, slag, 100, 512, [metals.aluminum.dust * 3]);

//Manyullyn
ArcFurnace.addRecipe(metals.manyullyn.ingot.firstItem, metals.cobalt.ingot, slag, 300, 512, [metals.ardite.ingot]);
ArcFurnace.addRecipe(metals.manyullyn.ingot.firstItem, metals.ardite.ingot, slag, 300, 512, [metals.cobalt.ingot]);
*/

/*
	Mixer

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Engineering/CraftTweaker_Support/Mixer/
*/
Mixer.addRecipe(<liquid:slime> * 500, <liquid:water> * 500, [<minecraft:wheat>, <minecraft:clay_ball>], 50);
Mixer.addRecipe(<liquid:blueslime> * 500, <liquid:slime> * 500, [<pickletweaks:dye_powder:11>, <natura:nether_glowshroom:1>], 50);
Mixer.addRecipe(<liquid:purpleslime> * 500, <liquid:slime> * 500, [<pickletweaks:dye_powder:10>, <nex:item_crystal_amethyst>], 50);

/*
	Refinery

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Engineering/CraftTweaker_Support/Refinery/
*/
Refinery.addRecipe(<liquid:fuel> * 100, <liquid:liquidoxygen> * 250, <liquid:kerosene> * 100, 2048);
Refinery.addRecipe(<liquid:fuel> * 100, <liquid:oxygen> * 250, <liquid:kerosene> * 100, 2048);

/*
	Bottling Machine

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Immersive_Engineering/CraftTweaker_Support/Bottling_Machine/
*/
BottlingMachine.addRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:glass_bottle>, <liquid:water> * 1000);
