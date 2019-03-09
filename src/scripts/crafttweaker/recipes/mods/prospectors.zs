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
	<prospectors:prospector_lowest:0> : [
		[
			[null, <ore:stickWood>.firstItem, <ore:logWood>],
			[null, <ore:logWood>, <ore:stickWood>.firstItem],
			[<ore:logWood>, null, null]
		]
	],
	<prospectors:prospector_low:0> : [
		[
			[null, <minecraft:coal:*>, <ore:blockGlass>],
			[null, <ore:logWood>, <minecraft:coal:*>],
			[<ore:logWood>, null, null]
		]
	],
	<prospectors:prospector_med:0> : [
		[
			[null, <minecraft:redstone:0>, <ore:blockGlass>],
			[null, <minecraft:dye:4>, <minecraft:redstone:0>],
			[<minecraft:dye:4>, null, null]
		]
	],
	<prospectors:prospector_high:0> : [
		[
			[null, <minecraft:redstone:0>, <ore:blockGlass>],
			[null, <minecraft:blaze_rod:0>, <minecraft:redstone:0>],
			[<minecraft:blaze_rod:0>, null, null]
		]
	],
	<prospectors:prospector_best:0> : [
		[
			[null, <minecraft:diamond:0>, <ore:blockGlass>],
			[null, <minecraft:blaze_rod:0>, <minecraft:diamond:0>],
			[<minecraft:blaze_rod:0>, null, null]
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
static removeRecipes as IItemStack[] = [
	<prospectors:prospector_high:0>,
	<prospectors:prospector_low:0>,
	<prospectors:prospector_low:0>,
	<prospectors:prospector_lowest:0>,
	<prospectors:prospector_med:0>
];

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
