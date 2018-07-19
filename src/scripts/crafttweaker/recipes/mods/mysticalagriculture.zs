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

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<mysticalagriculture:ultimate_furnace>: [
		[
			[<minecraft:skull:1>, <minecraft:nether_star>, <minecraft:skull:1>],
			[<mysticalagradditions:storage>, <mysticalagriculture:supremium_furnace>, <mysticalagradditions:storage>],
			[<minecraft:skull:1>, <mysticalagradditions:storage>, <minecraft:skull:1>]
		]
	],
	<mysticalagriculture:supremium_boots>: [
		[
			[<mysticalagriculture:crafting:37>, <environmentaltech:modifier_creative_flight>, <mysticalagriculture:gear:9>],
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
static recipesToGenerate as IItemStack[IIngredient] = {
	<mysticalagriculture:aluminum_brass_essence>: metals.aluminumBrass.ingot.firstItem * 6,
	<mysticalagriculture:aluminum_essence>: metals.aluminum.ingot.firstItem * 8,
	<mysticalagriculture:ardite_essence>: metals.ardite.ingot.firstItem * 3,
	<mysticalagriculture:bronze_essence>: metals.bronze.ingot.firstItem * 4,
	<mysticalagriculture:coal_essence>: <minecraft:coal> * 12,
	<mysticalagriculture:cobalt_essence>: metals.cobalt.ingot.firstItem * 3,
	<mysticalagriculture:constantan_essence>: metals.constantan.ingot.firstItem * 4,
	<mysticalagriculture:copper_essence>: metals.copper.ingot.firstItem * 6,
	<mysticalagriculture:creeper_essence>: <minecraft:gunpowder> * 6,
	<mysticalagriculture:diamond_essence>: <minecraft:diamond>,
	<mysticalagriculture:electrum_essence>: metals.electrum.ingot.firstItem * 4,
	<mysticalagriculture:fiery_ingot_essence>: metals.fiery.ingot.firstItem * 3,
	<mysticalagriculture:gold_essence>: metals.gold.ingot.firstItem * 4,
	<mysticalagriculture:iron_essence>: metals.iron.ingot.firstItem * 6,
	<mysticalagriculture:knightslime_essence>: metals.knightslime.ingot.firstItem * 4,
	<mysticalagriculture:lead_essence>: metals.lead.ingot.firstItem * 4,
	<mysticalagriculture:manyullyn_essence>: metals.manyullyn.ingot.firstItem * 2,
	<mysticalagriculture:nickel_essence>: metals.nickel.ingot.firstItem * 4,
	<mysticalagriculture:osmium_essence>: metals.osmium.ingot.firstItem * 4,
	<mysticalagriculture:platinum_essence>: metals.platinum.ingot.firstItem * 2,
	<mysticalagriculture:quartz_enriched_iron_essence>: <refinedstorage:quartz_enriched_iron> * 8,
	<mysticalagriculture:silver_essence>: metals.silver.ingot.firstItem * 4,
	<mysticalagriculture:steel_essence>: metals.steel.ingot.firstItem * 3,
	<mysticalagriculture:steeleaf_essence>: metals.steeleaf.ingot.firstItem * 5,
	<mysticalagriculture:tin_essence>: metals.tin.ingot.firstItem * 4,
	<mysticalagriculture:titanium_essence>: metals.titanium.ingot.firstItem * 2,
	<mysticalagriculture:uranium_essence>: metals.uranium.ingot.firstItem * 2
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
static removeRecipes as IIngredient[] = [
	<mysticalagriculture:supremium_boots>,
	<mysticalagriculture:ultimate_furnace>,
	<mysticalagriculture:crafting:7>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.shapelessRecipes;
	var recipesToGenerate as IItemStack[IIngredient] = scripts.crafttweaker.recipes.mods.mysticalagriculture.recipesToGenerate;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.mysticalagriculture.removeRecipes;

	// Build the recipes to be generated from the Generated Map.
	var generatedShapedRecipes as IIngredient[][][][IItemStack] = {};
	for essence, output in recipesToGenerate {
		var essenceRecipe as IIngredient[][] = [
			[essence, essence, essence],
			[essence, null, essence],
			[essence, essence, essence]
		];

		if (generatedShapedRecipes has output) {
			generatedShapedRecipes[output] += essenceRecipe;
		} else {
			generatedShapedRecipes[output] = [essenceRecipe];
		}
	}

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
	recipeUtil.process(generatedShapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}

