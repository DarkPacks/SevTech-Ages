/*
    SevTech: Ages Resources Recipe Script

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.stages.stageOne;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	metals.bronze.gear.firstItem: {
		Utils.genRecipeName(stageOne, "bronze_gear"): [
			[
				[null, metals.bronze.plate, null],
				[metals.bronze.plate, <teslacorelib:gear_stone:0>, metals.bronze.plate],
				[null, metals.bronze.plate, null]
			]
		]
	},
	metals.tin.gear.firstItem: {
		Utils.genRecipeName(stageOne, "tin_gear"): [
			[
				[null, metals.tin.plate, null],
				[metals.tin.plate, <teslacorelib:gear_stone:0>, metals.tin.plate],
				[null, metals.tin.plate, null]
			]
		]
	},
	metals.copper.gear.firstItem: {
		Utils.genRecipeName(stageOne, "copper_gear"): [
			[
				[null, metals.copper.plate, null],
				[metals.copper.plate, <teslacorelib:gear_stone:0>, metals.copper.plate],
				[null, metals.copper.plate, null]
			]
		]
	}
};

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
static removeRecipes as IItemStack[] = [];

function init() {
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
