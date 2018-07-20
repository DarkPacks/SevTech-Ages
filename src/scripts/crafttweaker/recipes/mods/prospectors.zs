/*
    SevTech: Ages %mod% Recipe Script

    This script handles the recipes for %mod%.

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
	<prospectors:prospector_lowest> : [
		[
			[null, <ore:stickWood>.firstItem, <ore:logWood>],
			[null, <ore:logWood>, <ore:stickWood>.firstItem],
			[<ore:logWood>, null, null]
		]
	],
	<prospectors:prospector_low> : [
		[
			[null, <minecraft:coal:*>, <ore:blockGlass>],
			[null, <ore:logWood>, <minecraft:coal:*>],
			[<ore:logWood>, null, null]
		]
	],
	<prospectors:prospector_med> : [
		[
			[null, <minecraft:redstone>, <ore:blockGlass>],
			[null, <minecraft:dye:4>, <minecraft:redstone>],
			[<minecraft:dye:4>, null, null]
		]
	],
	<prospectors:prospector_high> : [
		[
			[null, <minecraft:redstone>, <ore:blockGlass>],
			[null, <minecraft:blaze_rod>, <minecraft:redstone>],
			[<minecraft:blaze_rod>, null, null]
		]
	],
	<prospectors:prospector_best> : [
		[
			[null, <minecraft:diamond>, <ore:blockGlass>],
			[null, <minecraft:blaze_rod>, <minecraft:diamond>],
			[<minecraft:blaze_rod>, null, null]
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
	<prospectors:prospector_high>,
	<prospectors:prospector_low>,
	<prospectors:prospector_low>,
	<prospectors:prospector_lowest>,
	<prospectors:prospector_med>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.prospectors.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.prospectors.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.prospectors.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.prospectors.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.prospectors.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.prospectors.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.prospectors.removeRecipes;

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
