/*
	SevTech: Ages Immersive Engineering Arc Furnace Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

function init() {
	var slag as IItemStack = <ore:itemSlag>.firstItem;

	// Quartz Glass
	immersiveEngineering.addArcFurn(<appliedenergistics2:quartz_glass:0> * 4, <ore:blockGlass> * 4, null, 200, 512,
		[<ore:dustQuartz> * 5]
	);
	// Vanilla Glass
	immersiveEngineering.addArcFurn(<minecraft:glass:0>, <ore:sand>, null, 150, 256);

	// Vanilla Glass Panes
	immersiveEngineering.addArcFurn(<minecraft:glass_pane:0>, <betterwithmods:sand_pile:0> * 2, null, 100, 150);

	//==============================================================
	// Add Steve's carts recipes
	// Lump of Galgador
	immersiveEngineering.addArcFurn(<stevescarts:modulecomponents:46> * 2, metals.platinum.block.firstItem, slag, 200, 512,
		[<minecraft:glowstone_dust:0> * 3, <stevescarts:modulecomponents:45> * 3, <stevescarts:modulecomponents:21> * 2]
	);
	//Stabilized Metal
	immersiveEngineering.addArcFurn(<stevescarts:modulecomponents:21> * 5, <stevescarts:modulecomponents:20>, slag, 200, 512,
		[metals.iron.ingot.firstItem * 5, <stevescarts:modulecomponents:19> * 3]
	);

	//==============================================================
	// Add recipes for alloying that is removed by metals script
	// Also adding slag as an output to them all

	// Steel
	immersiveEngineering.addArcFurn(metals.steel.ingot.firstItem, metals.iron.ingot, slag, 300, 448, [<ore:dustCoke>]);

	// Constantan
	immersiveEngineering.addArcFurn(metals.constantan.ingot.firstItem * 2, metals.copper.ingot, slag, 100, 512, [metals.nickel.dust]);
	immersiveEngineering.addArcFurn(metals.constantan.ingot.firstItem * 2, metals.nickel.ingot, slag, 100, 512, [metals.copper.dust]);

	// Electrum
	immersiveEngineering.addArcFurn(metals.electrum.ingot.firstItem * 2, metals.gold.ingot, slag, 100, 512, [metals.silver.dust]);
	immersiveEngineering.addArcFurn(metals.electrum.ingot.firstItem * 2, metals.silver.ingot, slag, 100, 512, [metals.gold.dust]);

	// Invar
	immersiveEngineering.addArcFurn(metals.invar.ingot.firstItem * 3, metals.nickel.ingot, slag, 100, 512, [metals.iron.dust * 2]);

	// Ender Utilities
	immersiveEngineering.addArcFurn(<enderutilities:enderpart:0> * 4, <minecraft:ender_pearl:0>, slag, 100, 512, [<quark:biotite:0> * 8]);
	immersiveEngineering.addArcFurn(<enderutilities:enderpart:1> * 4, <minecraft:ender_eye:0>, slag, 100, 512, [<minecraft:chorus_fruit:0> * 8]);
	immersiveEngineering.addArcFurn(<enderutilities:enderpart:2> * 2, <minecraft:ender_eye:0>, slag, 100, 512, [<minecraft:purpur_block:0> * 4, <minecraft:end_rod:0> * 2, <minecraft:shulker_shell:0>]);
	immersiveEngineering.addArcFurn(<enderutilities:enderpart:20> * 4, <minecraft:ender_pearl:0>, slag, 100, 512, [<minecraft:end_rod:0> * 4]);

	// Black Iron
	immersiveEngineering.addArcFurn(<extendedcrafting:material:0>, metals.iron.ingot, slag, 100, 512, [<actuallyadditions:item_dust:7>]);

	// Refined Energistics 2.3333333 <- YA! YOU LIKE THAT
	immersiveEngineering.addArcFurn(<refinedstorage:quartz_enriched_iron:0> * 4, metals.iron.ingot * 3, slag, 100, 512, [<appliedenergistics2:material:0>]);

	// Bronze Alloying
	immersiveEngineering.addArcFurn(metals.bronze.ingot.firstItem * 4, metals.copper.ingot * 3, slag, 100, 512, [metals.tin.dust]);

	// Redstone Alloy
	immersiveEngineering.addArcFurn(metals.redstoneAlloy.ingot.firstItem * 2, metals.constantan.ingot, slag, 100, 512, [<minecraft:glowstone_dust:0>, <minecraft:redstone:0>]);

	// Modularium
	immersiveEngineering.addArcFurn(metals.modularium.ingot.firstItem * 2, metals.aluminum.ingot, slag, 100, 512, [metals.iron.dust, <minecraft:redstone:0>]);
	immersiveEngineering.addArcFurn(metals.modularium.ingot.firstItem * 2, metals.iron.ingot, slag, 100, 512, [metals.aluminum.dust, <minecraft:redstone:0>]);

	// Aluminum Brass
	immersiveEngineering.addArcFurn(metals.aluminumBrass.ingot.firstItem * 4, metals.copper.ingot, slag, 100, 512, [metals.aluminum.dust * 3]);

	// Manyullyn
	immersiveEngineering.addArcFurn(metals.manyullyn.ingot.firstItem, metals.cobalt.ingot, slag, 300, 512, [metals.ardite.ingot]);
	immersiveEngineering.addArcFurn(metals.manyullyn.ingot.firstItem, metals.ardite.ingot, slag, 300, 512, [metals.cobalt.ingot]);

	// Add a few ore to ingot recipes for metals without dust

	// Cobalt
	immersiveEngineering.addArcFurn(metals.cobalt.ingot.firstItem * 2, metals.cobalt.ore, null, 600, 512);

	// Ardite
	immersiveEngineering.addArcFurn(metals.ardite.ingot.firstItem * 2, metals.ardite.ore, null, 200, 512);
}
