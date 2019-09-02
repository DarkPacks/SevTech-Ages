/*
    SevTech: Ages Mystical Agriculture Recipe Script

    This script handles the recipes for Mystical Agriculture.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.stages.stageFive;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<mysticalagriculture:ultimate_furnace:0>: [
		[
			[<minecraft:skull:1>, <minecraft:nether_star:0>, <minecraft:skull:1>],
			[<mysticalagradditions:storage:0>, <mysticalagriculture:supremium_furnace:0>, <mysticalagradditions:storage:0>],
			[<minecraft:skull:1>, <mysticalagradditions:storage:0>, <minecraft:skull:1>]
		]
	],
	<mysticalagriculture:supremium_boots:0>: [
		[
			[<mysticalagriculture:crafting:37>, <environmentaltech:modifier_creative_flight:0>, <mysticalagriculture:gear:9>],
			[<mysticalagriculture:crafting:37>, null, <mysticalagriculture:crafting:37>]
		]
	],
	<mysticalagriculture:crafting:7>: [
		[
			[<ore:dyeBlack>, <ore:dyeOrange>],
			[<ore:dyeCyan>, <ore:dyeMagenta>]
		]
	]
};

/*
	Recipes which need to be generated and added to the Map to be ran via our recipeUtil.
*/
static squareRecipesToGenerate as IItemStack[IIngredient] = {
	<mysticalagriculture:aluminum_brass_essence:0>: metals.aluminumBrass.ingot.firstItem * 6,
	<mysticalagriculture:aluminum_essence:0>: metals.aluminum.ingot.firstItem * 8,
	<mysticalagriculture:ardite_essence:0>: metals.ardite.ingot.firstItem * 3,
	<mysticalagriculture:bronze_essence:0>: metals.bronze.ingot.firstItem * 4,
	<mysticalagriculture:coal_essence:0>: <minecraft:coal:0> * 12,
	<mysticalagriculture:cobalt_essence:0>: metals.cobalt.ingot.firstItem * 3,
	<mysticalagriculture:compressed_iron_essence:0>: metals.compressedIron.ingot.firstItem * 6,
	<mysticalagriculture:constantan_essence:0>: metals.constantan.ingot.firstItem * 4,
	<mysticalagriculture:copper_essence:0>: metals.copper.ingot.firstItem * 6,
	<mysticalagriculture:creeper_essence:0>: <minecraft:gunpowder:0> * 6,
	<mysticalagriculture:diamond_essence:0>: <minecraft:diamond:0>,
	<mysticalagriculture:electrum_essence:0>: metals.electrum.ingot.firstItem * 4,
	<mysticalagriculture:fiery_ingot_essence:0>: metals.fiery.ingot.firstItem * 3,
	<mysticalagriculture:gold_essence:0>: metals.gold.ingot.firstItem * 4,
	<mysticalagriculture:iron_essence:0>: metals.iron.ingot.firstItem * 6,
	<mysticalagriculture:knightslime_essence:0>: metals.knightslime.ingot.firstItem * 4,
	<mysticalagriculture:lead_essence:0>: metals.lead.ingot.firstItem * 4,
	<mysticalagriculture:manyullyn_essence:0>: metals.manyullyn.ingot.firstItem * 2,
	<mysticalagriculture:meteoric_iron_essence>: metals.meteoricIron.ingot.firstItem * 3,
	<mysticalagriculture:nickel_essence:0>: metals.nickel.ingot.firstItem * 4,
	<mysticalagriculture:osmium_essence:0>: metals.osmium.ingot.firstItem * 4,
	<mysticalagriculture:platinum_essence:0>: metals.platinum.ingot.firstItem * 2,
	<mysticalagriculture:quartz_enriched_iron_essence:0>: <refinedstorage:quartz_enriched_iron:0> * 8,
	<mysticalagriculture:silver_essence:0>: metals.silver.ingot.firstItem * 4,
	<mysticalagriculture:steel_essence:0>: metals.steel.ingot.firstItem * 3,
	<mysticalagriculture:steeleaf_essence:0>: metals.steeleaf.ingot.firstItem * 5,
	<mysticalagriculture:tin_essence:0>: metals.tin.ingot.firstItem * 4,
	<mysticalagriculture:titanium_essence:0>: metals.titanium.ingot.firstItem * 2,
	<mysticalagriculture:uranium_essence:0>: metals.uranium.ingot.firstItem * 2
};

static lineRecipesToGenerate as IItemStack[IIngredient] = {
	<mysticalagriculture:silicon_essence:0>: <galacticraftcore:basic_item:2> * 8,
	<mysticalagriculture:black_quartz_essence:0>: <actuallyadditions:item_misc:5> * 2
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<mysticalagriculture:supremium_boots:0>,
	<mysticalagriculture:ultimate_furnace:0>,
	<mysticalagriculture:crafting:7>
];

function init() {
	// Build the recipes to be generated from the Generated Map.
	var generatedShapedRecipes as IIngredient[][][][string][IItemStack] = {};

	for essence, output in squareRecipesToGenerate {
		var recipeName = Utils.genRecipeName(stageFive, output);

		var essenceRecipe as IIngredient[][] = [
			[essence, essence, essence],
			[essence, null, essence],
			[essence, essence, essence]
		];

		if (!(generatedShapedRecipes has output)) {
			generatedShapedRecipes[output] = {};
		}
		generatedShapedRecipes[output][recipeName] = [essenceRecipe];
	}

	for essence, output in lineRecipesToGenerate {
		var recipeName = Utils.genRecipeName(stageFive, output);

		var essenceRecipe as IIngredient[][] = [
			[essence],
			[essence],
			[essence]
		];

		if (!(generatedShapedRecipes has output)) {
			generatedShapedRecipes[output] = {};
		}
		generatedShapedRecipes[output][recipeName] = [essenceRecipe];
	}

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);
	recipeUtil.processNamed(generatedShapedRecipes, false);

	recipeUtil.removeRecipes(removeRecipes);
}
