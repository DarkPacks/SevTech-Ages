#priority 10
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
		<ferdinandsflowers:block_cff_doublesb:0>,
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
		<ferdinandsflowers:block_cff_doubless:4>,
		<ferdinandsflowers:block_cff_flowers:1>,
		<ferdinandsflowers:block_cff_flowers:6>,
		<ferdinandsflowers:block_cff_flowersb:1>,
		<ferdinandsflowers:block_cff_flowersb:2>,
		<ferdinandsflowers:block_cff_flowersb:4>,
		<ferdinandsflowers:block_cff_flowersb:9>,
		<ferdinandsflowers:block_cff_flowersc:1>,
		<ferdinandsflowers:block_cff_flowersd:4>,
		<ferdinandsflowers:block_cff_flowerse:12>,
		<ferdinandsflowers:block_cff_flowerse:14>,
		<ferdinandsflowers:block_cff_flowerse:14>,
		<ferdinandsflowers:block_cff_fungus:4>,
		<ferdinandsflowers:block_cff_fungus:5>,
		<ferdinandsflowers:block_cff_fungus:6>,
		<minecraft:red_flower:5>
	],

	// Magenta
	<ore:dyeMagenta>.firstItem : [
		<ferdinandsflowers:block_cff_doublesp:3>,
		<ferdinandsflowers:block_cff_doublesp:4>,
		<ferdinandsflowers:block_cff_flowers:8>,
		<ferdinandsflowers:block_cff_flowers:0>,
		<ferdinandsflowers:block_cff_flowersc:10>,
		<ferdinandsflowers:block_cff_flowersc:11>,
		<ferdinandsflowers:block_cff_flowersd:15>,
		<ferdinandsflowers:block_cff_flowersd:0>,
		<ferdinandsflowers:block_cff_flowerse:5>,
		<ferdinandsflowers:block_cff_flowerse:13>,
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
		<ferdinandsflowers:block_cff_flowerse:6>,
		<ferdinandsflowers:block_cff_flowerse:11>,
		<ferdinandsflowers:block_cff_fungus:12>,
		<minecraft:red_flower:1>
	],

	// Yellow
	<ore:dyeYellow>.firstItem : [
		<ferdinandsflowers:block_cff_desert:3>,
		<ferdinandsflowers:block_cff_desert:4>,
		<ferdinandsflowers:block_cff_doubless:1>,
		<ferdinandsflowers:block_cff_doubless:2>,
		<ferdinandsflowers:block_cff_doubless:3>,
		<ferdinandsflowers:block_cff_doubless:5>,
		<ferdinandsflowers:block_cff_flowers:11>,
		<ferdinandsflowers:block_cff_flowers:12>,
		<ferdinandsflowers:block_cff_flowersb:6>,
		<ferdinandsflowers:block_cff_flowersb:11>,
		<ferdinandsflowers:block_cff_flowersb:12>,
		<ferdinandsflowers:block_cff_flowersb:13>,
		<ferdinandsflowers:block_cff_flowersc:7>,
		<ferdinandsflowers:block_cff_flowersd:5>,
		<ferdinandsflowers:block_cff_fungus:0>,
		<minecraft:double_plant:0>,
		<minecraft:dye:11>,
		<minecraft:yellow_flower:0>
	],

	// Lime
	<ore:dyeLime>.firstItem : [
		<ferdinandsflowers:block_cff_flowersd:7>
	],

	// Pink
	<ore:dyePink>.firstItem : [
		<ferdinandsflowers:block_cff_desert:7>,
		<ferdinandsflowers:block_cff_doubles:0>,
		<ferdinandsflowers:block_cff_doublesb:2>,
		<ferdinandsflowers:block_cff_doublesb:3>,
		<ferdinandsflowers:block_cff_doublesb:4>,
		<ferdinandsflowers:block_cff_doublesc:0>,
		<ferdinandsflowers:block_cff_doublesp:5>,
		<ferdinandsflowers:block_cff_flowers:3>,
		<ferdinandsflowers:block_cff_flowers:5>,
		<ferdinandsflowers:block_cff_flowersb:3>,
		<ferdinandsflowers:block_cff_flowersc:3>,
		<ferdinandsflowers:block_cff_flowersc:9>,
		<ferdinandsflowers:block_cff_flowersc:12>,
		<ferdinandsflowers:block_cff_flowersc:0>,
		<ferdinandsflowers:block_cff_flowersd:3>,
		<ferdinandsflowers:block_cff_flowerse:0>,
		<ferdinandsflowers:block_cff_ouch:3>,
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
		<ferdinandsflowers:block_cff_flowersd:10>,
		<ferdinandsflowers:block_cff_fungus:13>
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
		<ferdinandsflowers:block_cff_doublesp:2>,
		<ferdinandsflowers:block_cff_flowers:2>,
		<ferdinandsflowers:block_cff_flowers:7>,
		<ferdinandsflowers:block_cff_flowers:9>,
		<ferdinandsflowers:block_cff_flowers:10>,
		<ferdinandsflowers:block_cff_flowers:14>,
		<ferdinandsflowers:block_cff_flowersb:10>,
		<ferdinandsflowers:block_cff_flowersb:14>,
		<ferdinandsflowers:block_cff_flowersb:15>,
		<ferdinandsflowers:block_cff_flowersb:0>,
		<ferdinandsflowers:block_cff_flowersc:4>,
		<ferdinandsflowers:block_cff_flowersd:1>,
		<ferdinandsflowers:block_cff_flowersd:9>,
		<ferdinandsflowers:block_cff_flowerse:1>,
		<ferdinandsflowers:block_cff_flowerse:2>,
		<ferdinandsflowers:block_cff_flowerse:3>,
		<ferdinandsflowers:block_cff_flowerse:4>,
		<ferdinandsflowers:block_cff_fungus:10>,
		<ferdinandsflowers:block_cff_fungus:11>
	],

	// Blue
	<ore:dyeBlue>.firstItem : [
		<ferdinandsflowers:block_cff_desert:10>,
		<ferdinandsflowers:block_cff_doublesd:3>,
		<ferdinandsflowers:block_cff_doublesp:0>,
		<ferdinandsflowers:block_cff_doublesp:1>,
		<ferdinandsflowers:block_cff_flowers:4>,
		<ferdinandsflowers:block_cff_flowersb:7>,
		<ferdinandsflowers:block_cff_flowersc:5>,
		<ferdinandsflowers:block_cff_flowersc:6>,
		<ferdinandsflowers:block_cff_flowersd:13>,
		<ferdinandsflowers:block_cff_flowersd:14>,
		<ferdinandsflowers:block_cff_flowerse:7>,
		<ferdinandsflowers:block_cff_flowerse:8>,
		<ferdinandsflowers:block_cff_flowerse:9>,
		<ferdinandsflowers:block_cff_flowerse:10>,
		<minecraft:dye:4>
	],

	// Brown
	<ore:dyeBrown>.firstItem : [
		<betterwithmods:material:44>,
		<ferdinandsflowers:block_cff_desert:2>,
		<ferdinandsflowers:block_cff_doubles:3>,
		<ferdinandsflowers:block_cff_fungus:7>,
		<ferdinandsflowers:block_cff_fungus:8>,
		<ferdinandsflowers:block_cff_fungus:9>,
		<ferdinandsflowers:block_cff_ouch:4>
	],

	// Green
	<ore:dyeGreen>.firstItem : [
		<ferdinandsflowers:block_cff_desert:14>,
		<ferdinandsflowers:block_cff_desert:0>,
		<ferdinandsflowers:block_cff_doublesc:4>,
		<ferdinandsflowers:block_cff_doublesd:1>,
		<ferdinandsflowers:block_cff_doublesd:0>,
		<ferdinandsflowers:block_cff_flowersc:2>,
		<ferdinandsflowers:block_cff_ouch:1>,
		<ferdinandsflowers:block_cff_ouch:2>,
		<ferdinandsflowers:block_cff_ouch:0>,
		<minecraft:dye:2>
	],

	// Red
	<ore:dyeRed>.firstItem : [
		<ferdinandsflowers:block_cff_desert:1>,
		<ferdinandsflowers:block_cff_doubles:4>,
		<ferdinandsflowers:block_cff_doublesb:5>,
		<ferdinandsflowers:block_cff_doublesd:2>,
		<ferdinandsflowers:block_cff_doubless:0>,
		<ferdinandsflowers:block_cff_flowersb:5>,
		<ferdinandsflowers:block_cff_flowersc:8>,
		<ferdinandsflowers:block_cff_flowersc:13>,
		<ferdinandsflowers:block_cff_flowersd:2>,
		<ferdinandsflowers:block_cff_fungus:1>,
		<ferdinandsflowers:block_cff_fungus:2>,
		<ferdinandsflowers:block_cff_fungus:3>,
		<minecraft:double_plant:4>,
		<minecraft:dye:1>,
		<minecraft:red_flower:4>,
		<minecraft:red_flower:0>,
		<rustic:wildberries:0>
	],

	// Black
	<ore:dyeBlack>.firstItem : [
		<actuallyadditions:block_black_lotus:0>,
		<minecraft:dye:0>,
		<nex:wither_dust:0>
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
			immersiveEngineering.addCrusher(<minecraft:string:0> * 4, <minecraft:wool:0>.definition.makeStack(dye.metadata), IE_CRUSHER_ENERGY);
		} else {
			immersiveEngineering.addCrusher(<minecraft:string:0> * 4, <minecraft:wool:0>.definition.makeStack(dye.metadata), IE_CRUSHER_ENERGY, dye, 0.05);
		}

		for item in items {
			actuallyAdditions.addCrusher(dye * 2, item);
			betterWithMods.addMilling([item], [dye * 2]);
			immersiveEngineering.addCrusher(dye * 2, item, IE_CRUSHER_ENERGY);
			horsePower.addGrindstone(dye, item, HP_GRINDSTONE_TIME, false);
			mekanism.addCrusher(item, dye * 2);
		}

		// ==================================
		// Re-create Minecraft Wool Dying Recipes
		var dyeName as string = minecraftDyeIdTable[15 - dye.metadata];
		var dyeOredict as IOreDictEntry = oreDict.get("dye" ~ utils.capitalize(dyeName));
		recipes.addShaped("dye_wool_" ~ dyeName,
			<minecraft:wool:0>.definition.makeStack(dye.metadata) * 8, [
				[<ore:wool>, <ore:wool>, <ore:wool>],
				[<ore:wool>, dyeOredict, <ore:wool>],
				[<ore:wool>, <ore:wool>, <ore:wool>]
			]
		);
	}

	<ore:dyeSilver>.add(<ore:dyeLightGray>.firstItem); // TODO: remove when AE2 accepts dyeLightGray
}
