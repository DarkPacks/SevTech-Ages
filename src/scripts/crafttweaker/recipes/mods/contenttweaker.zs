/*
    SevTech: Ages Content Tweaker Recipe Script

    This script handles the recipes for Content Tweaker.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<contenttweaker:bronze_chest> : [
		[
			[metals.bronze.plate, null, metals.bronze.plate],
			[metals.bronze.plate, metals.bronze.plate, metals.bronze.plate],
			[metals.bronze.plate, metals.bronze.plate, metals.bronze.plate]
		]
	],
	<contenttweaker:bronze_feet> : [
		[
			[metals.bronze.plate, null, metals.bronze.plate],
			[metals.bronze.plate, null, metals.bronze.plate]
		]
	],
	<contenttweaker:bronze_head> : [
		[
			[metals.bronze.plate, metals.bronze.plate, metals.bronze.plate],
			[metals.bronze.plate, null, metals.bronze.plate]
		]
	],
	<contenttweaker:bronze_legs> : [
		[
			[metals.bronze.plate, metals.bronze.plate, metals.bronze.plate],
			[metals.bronze.plate, null, metals.bronze.plate],
			[metals.bronze.plate, null, metals.bronze.plate]
		]
	],
	<contenttweaker:copper_chest> : [
		[
			[metals.copper.plate, null, metals.copper.plate],
			[metals.copper.plate, metals.copper.plate, metals.copper.plate],
			[metals.copper.plate, metals.copper.plate, metals.copper.plate]
		]
	],
	<contenttweaker:copper_feet> : [
		[
			[metals.copper.plate, null, metals.copper.plate],
			[metals.copper.plate, null, metals.copper.plate]
		]
	],
	<contenttweaker:copper_head> : [
		[
			[metals.copper.plate, metals.copper.plate, metals.copper.plate],
			[metals.copper.plate, null, metals.copper.plate]
		]
	],
	<contenttweaker:copper_legs> : [
		[
			[metals.copper.plate, metals.copper.plate, metals.copper.plate],
			[metals.copper.plate, null, metals.copper.plate],
			[metals.copper.plate, null, metals.copper.plate]
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
static removeRecipes as IIngredient[] = [];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.contenttweaker.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.contenttweaker.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.contenttweaker.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.contenttweaker.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.contenttweaker.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.contenttweaker.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.contenttweaker.removeRecipes;

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
