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
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<mysticalagriculture:supremium_boots>,
	<mysticalagriculture:ultimate_furnace>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.mysticalagriculture.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}

/*
	Adds an essence recipe as an un-named recipe to the shapedRecipes map
*/
function addEssenceRecipe(essence as IIngredient, output as IItemStack) {
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.mysticalagriculture.shapedRecipes;

	var essenceRecipe as IIngredient[][] = [
		[essence, essence, essence],
		[essence, null, essence],
		[essence, essence, essence]
	];

	if (shapedRecipes has output) {
		shapedRecipes[output] += essenceRecipe;
	} else {
		shapedRecipes[output] = [essenceRecipe];
	}
}

// Add essence recipes back lost by unification
addEssenceRecipe(<mysticalagriculture:aluminum_brass_essence>, metals.aluminumBrass.ingot.firstItem * 6);
addEssenceRecipe(<mysticalagriculture:aluminum_essence>, metals.aluminum.ingot.firstItem * 8);
addEssenceRecipe(<mysticalagriculture:ardite_essence>, metals.ardite.ingot.firstItem * 3);
addEssenceRecipe(<mysticalagriculture:bronze_essence>, metals.bronze.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:coal_essence>, <minecraft:coal> * 12);
addEssenceRecipe(<mysticalagriculture:cobalt_essence>, metals.cobalt.ingot.firstItem * 3);
addEssenceRecipe(<mysticalagriculture:constantan_essence>, metals.constantan.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:copper_essence>, metals.copper.ingot.firstItem * 6);
addEssenceRecipe(<mysticalagriculture:creeper_essence>, <minecraft:gunpowder> * 6);
addEssenceRecipe(<mysticalagriculture:diamond_essence>, <minecraft:diamond>);
addEssenceRecipe(<mysticalagriculture:electrum_essence>, metals.electrum.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:fiery_ingot_essence>, metals.fiery.ingot.firstItem * 3);
addEssenceRecipe(<mysticalagriculture:gold_essence>, metals.gold.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:iron_essence>, metals.iron.ingot.firstItem * 6);
addEssenceRecipe(<mysticalagriculture:knightslime_essence>, metals.knightslime.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:lead_essence>, metals.lead.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:manyullyn_essence>, metals.manyullyn.ingot.firstItem * 2);
addEssenceRecipe(<mysticalagriculture:nickel_essence>, metals.nickel.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:osmium_essence>, metals.osmium.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:platinum_essence>, metals.platinum.ingot.firstItem * 2);
addEssenceRecipe(<mysticalagriculture:quartz_enriched_iron_essence>, <refinedstorage:quartz_enriched_iron> * 8);
addEssenceRecipe(<mysticalagriculture:silver_essence>, metals.silver.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:steel_essence>, metals.steel.ingot.firstItem * 3);
addEssenceRecipe(<mysticalagriculture:steeleaf_essence>, metals.steeleaf.ingot.firstItem * 5);
addEssenceRecipe(<mysticalagriculture:tin_essence>, metals.tin.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:titanium_essence>, metals.titanium.ingot.firstItem * 2);
addEssenceRecipe(<mysticalagriculture:uranium_essence>, metals.uranium.ingot.firstItem * 2);
