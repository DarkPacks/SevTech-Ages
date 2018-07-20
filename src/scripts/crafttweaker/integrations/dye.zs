/*
	SevTech: Ages Dye Integration Script

	This script handles changing how dyes are worked in the pack.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.crafttweaker.utils;

/*
	Map contaning the Dyes and the flowers which can be turned into the Dye.

	Notes: Thanks to Neosghost for pairing ferdinands flowers!
*/
static dyeCrushingRecipes as IItemStack[][IItemStack] = {
	// White
	<ore:dyeWhite>.firstItem : [
		<ferdinandsflowers:block_cff_desert:11>,
		<ferdinandsflowers:block_cff_doublesb:1>,
		<ferdinandsflowers:block_cff_doublesb>,
		<ferdinandsflowers:block_cff_flowers:13>,
		<ferdinandsflowers:block_cff_flowersb:8>,
		<ferdinandsflowers:block_cff_flowersd:6>,
		<ferdinandsflowers:block_cff_flowersd:8>,
		<minecraft:dye:15>
	],

	// Orange
	<ore:dyeOrange>.firstItem : [
		<ferdinandsflowers:block_cff_desert:5>,
		<ferdinandsflowers:block_cff_desert:12>,
		<ferdinandsflowers:block_cff_doublesc:1>,
		<ferdinandsflowers:block_cff_doublesc:2>,
		<ferdinandsflowers:block_cff_doublesc:3>,
		<ferdinandsflowers:block_cff_doublesd:5>,
		<ferdinandsflowers:block_cff_flowers:1>,
		<ferdinandsflowers:block_cff_flowers:6>,
		<ferdinandsflowers:block_cff_flowersb:1>,
		<ferdinandsflowers:block_cff_flowersb:2>,
		<ferdinandsflowers:block_cff_flowersb:4>,
		<ferdinandsflowers:block_cff_flowersb:9>,
		<ferdinandsflowers:block_cff_flowersc:1>,
		<ferdinandsflowers:block_cff_flowersd:4>,
		<minecraft:red_flower:5>
	],

	// Magenta
	<ore:dyeMagenta>.firstItem : [
		<ferdinandsflowers:block_cff_flowers:8>,
		<ferdinandsflowers:block_cff_flowers>,
		<ferdinandsflowers:block_cff_flowersc:10>,
		<ferdinandsflowers:block_cff_flowersc:11>,
		<ferdinandsflowers:block_cff_flowersd:15>,
		<ferdinandsflowers:block_cff_flowersd>,
		<minecraft:double_plant:1>,
		<minecraft:red_flower:2>
	],

	// Light Blue
	<ore:dyeLightBlue>.firstItem : [
		<ferdinandsflowers:block_cff_desert:8>,
		<ferdinandsflowers:block_cff_doublesc:5>,
		<ferdinandsflowers:block_cff_flowers:15>,
		<ferdinandsflowers:block_cff_flowersc:14>,
		<ferdinandsflowers:block_cff_flowersc:15>,
		<ferdinandsflowers:block_cff_flowersd:11>,
		<ferdinandsflowers:block_cff_flowersd:12>,
		<minecraft:red_flower:1>
	],

	// Yellow
	<ore:dyeYellow>.firstItem : [
		<ferdinandsflowers:block_cff_desert:3>,
		<ferdinandsflowers:block_cff_desert:4>,
		<ferdinandsflowers:block_cff_flowers:11>,
		<ferdinandsflowers:block_cff_flowers:12>,
		<ferdinandsflowers:block_cff_flowersb:6>,
		<ferdinandsflowers:block_cff_flowersb:11>,
		<ferdinandsflowers:block_cff_flowersb:12>,
		<ferdinandsflowers:block_cff_flowersb:13>,
		<ferdinandsflowers:block_cff_flowersc:7>,
		<ferdinandsflowers:block_cff_flowersd:5>,
		<minecraft:double_plant>,
		<minecraft:dye:11>,
		<minecraft:yellow_flower>
	],

	// Lime
	<ore:dyeLime>.firstItem : [
		<ferdinandsflowers:block_cff_flowersd:7>
	],

	// Pink
	<ore:dyePink>.firstItem : [
		<ferdinandsflowers:block_cff_desert:7>,
		<ferdinandsflowers:block_cff_doubles>,
		<ferdinandsflowers:block_cff_doublesb:2>,
		<ferdinandsflowers:block_cff_doublesb:3>,
		<ferdinandsflowers:block_cff_doublesb:4>,
		<ferdinandsflowers:block_cff_doublesc>,
		<ferdinandsflowers:block_cff_flowers:3>,
		<ferdinandsflowers:block_cff_flowers:5>,
		<ferdinandsflowers:block_cff_flowersb:3>,
		<ferdinandsflowers:block_cff_flowersc:3>,
		<ferdinandsflowers:block_cff_flowersc:9>,
		<ferdinandsflowers:block_cff_flowersc:12>,
		<ferdinandsflowers:block_cff_flowersc>,
		<ferdinandsflowers:block_cff_flowersd:3>,
		<minecraft:double_plant:5>,
		<minecraft:red_flower:7>
	],

	// Gray
	<ore:dyeGray>.firstItem : [
	],

	// Light Gray
	<ore:dyeLightGray>.firstItem : [
		<ferdinandsflowers:block_cff_doublesd:4>,
		<minecraft:red_flower:3>,
		<minecraft:red_flower:6>,
		<minecraft:red_flower:8>
	],

	// Cyan
	<ore:dyeCyan>.firstItem : [
		<ferdinandsflowers:block_cff_flowersd:10>
	],

	// Purple
	<ore:dyePurple>.firstItem : [
		<ferdinandsflowers:block_cff_desert:6>,
		<ferdinandsflowers:block_cff_desert:9>,
		<ferdinandsflowers:block_cff_desert:13>,
		<ferdinandsflowers:block_cff_desert:15>,
		<ferdinandsflowers:block_cff_doubles:1>,
		<ferdinandsflowers:block_cff_doubles:2>,
		<ferdinandsflowers:block_cff_doubles:5>,
		<ferdinandsflowers:block_cff_flowers:2>,
		<ferdinandsflowers:block_cff_flowers:7>,
		<ferdinandsflowers:block_cff_flowers:9>,
		<ferdinandsflowers:block_cff_flowers:10>,
		<ferdinandsflowers:block_cff_flowers:14>,
		<ferdinandsflowers:block_cff_flowersb:10>,
		<ferdinandsflowers:block_cff_flowersb:14>,
		<ferdinandsflowers:block_cff_flowersb:15>,
		<ferdinandsflowers:block_cff_flowersb>,
		<ferdinandsflowers:block_cff_flowersc:4>,
		<ferdinandsflowers:block_cff_flowersd:1>,
		<ferdinandsflowers:block_cff_flowersd:9>
	],

	// Blue
	<ore:dyeBlue>.firstItem : [
		<ferdinandsflowers:block_cff_desert:10>,
		<ferdinandsflowers:block_cff_doublesd:3>,
		<ferdinandsflowers:block_cff_flowers:4>,
		<ferdinandsflowers:block_cff_flowersb:7>,
		<ferdinandsflowers:block_cff_flowersc:5>,
		<ferdinandsflowers:block_cff_flowersc:6>,
		<ferdinandsflowers:block_cff_flowersd:13>,
		<ferdinandsflowers:block_cff_flowersd:14>,
		<minecraft:dye:4>
	],

	// Brown
	<ore:dyeBrown>.firstItem : [
		<betterwithmods:material:44>,
		<ferdinandsflowers:block_cff_desert:2>,
		<ferdinandsflowers:block_cff_doubles:3>
	],

	// Green
	<ore:dyeGreen>.firstItem : [
		<ferdinandsflowers:block_cff_desert:14>,
		<ferdinandsflowers:block_cff_desert>,
		<ferdinandsflowers:block_cff_doublesc:4>,
		<ferdinandsflowers:block_cff_doublesd:1>,
		<ferdinandsflowers:block_cff_doublesd>,
		<ferdinandsflowers:block_cff_flowersc:2>,
		<ferdinandsflowers:block_cff_ouch:1>,
		<ferdinandsflowers:block_cff_ouch:2>,
		<ferdinandsflowers:block_cff_ouch>,
		<minecraft:dye:2>
	],

	// Red
	<ore:dyeRed>.firstItem : [
		<ferdinandsflowers:block_cff_desert:1>,
		<ferdinandsflowers:block_cff_doubles:4>,
		<ferdinandsflowers:block_cff_doublesb:5>,
		<ferdinandsflowers:block_cff_doublesd:2>,
		<ferdinandsflowers:block_cff_flowersb:5>,
		<ferdinandsflowers:block_cff_flowersc:8>,
		<ferdinandsflowers:block_cff_flowersc:13>,
		<ferdinandsflowers:block_cff_flowersd:2>,
		<minecraft:double_plant:4>,
		<minecraft:dye:1>,
		<minecraft:red_flower:4>,
		<minecraft:red_flower>,
		<rustic:wildberries>
	],

	// Black
	<ore:dyeBlack>.firstItem : [
		<actuallyadditions:block_black_lotus>,
		<minecraft:dye>,
		<nex:item_dust_wither>
	]
};

function init() {
	// ==================================
	// Loop over the Vanilla Dyes and remove all recipes for them.
	for minecraftDye in minecraftDyes {
		// Remove Vanilla recipes.
		recipes.remove(minecraftDye);
		// Remove AA Crusher recipes.
		actuallyAdditions.removeCrusher(minecraftDye);
	}

	var IE_CRUSHER_ENERGY as int = 3200;
	var HP_GRINDSTONE_TIME as int = 12;

	// ==================================
	// Loop over the Crushing recipes to create the correct recipes based on our Dye setup.
	for dye, items in scripts.crafttweaker.integrations.dye.dyeCrushingRecipes {
		// Re-create wool -> string/dye recipe
		if (dye.metadata == 0) {
			// White wool doesn't output dye.
			immersiveEngineering.addCrusher(<minecraft:string> * 4, <minecraft:wool>.definition.makeStack(dye.metadata), IE_CRUSHER_ENERGY);
		} else {
			immersiveEngineering.addCrusher(<minecraft:string> * 4, <minecraft:wool>.definition.makeStack(dye.metadata), IE_CRUSHER_ENERGY, dye, 0.05);
		}

		for item in items {
			actuallyAdditions.addCrusher(dye * 2, item);
			betterWithMods.addMilling([item], [dye * 2]);
			immersiveEngineering.addCrusher(dye * 2, item, IE_CRUSHER_ENERGY);
			horsePower.addGrindstone(item, dye, HP_GRINDSTONE_TIME, false);
			mekanism.addCrusher(item, dye * 2);
		}

		// ==================================
		// Re-create Minecraft Wool Dying Recipes
		var dyeName as string = minecraftDyeIdTable[15 - dye.metadata];
		var dyeOredict as IOreDictEntry = oreDict.get("dye" ~ utils.capitalize(dyeName));
		recipes.addShaped("dye_wool_" ~ dyeName,
			<minecraft:wool>.definition.makeStack(dye.metadata) * 8, [
				[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>],
				[<ore:blockWool>, dyeOredict, <ore:blockWool>],
				[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>]
			]
		);
	}
}