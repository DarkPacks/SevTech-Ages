/*
    SevTech: Ages Ender Utilities Recipe Script

    This script handles the recipes for Ender Utilities.

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
	<enderutilities:enderpart:12>: [
		[
			[<ore:obsidian>, <enderutilities:enderpart:2>, <ore:obsidian>],
			[<enderutilities:enderpart:2>, metals.enhancedGalgadorian.ingot, <enderutilities:enderpart:2>],
			[<ore:obsidian>, <enderutilities:enderpart:2>, <ore:obsidian>]
		]
	],
	<enderutilities:enderpart:11>: [
		[
			[<ore:obsidian>, <enderutilities:enderpart:1>, <ore:obsidian>],
			[<enderutilities:enderpart:1>, metals.reinforcedMetal.ingot, <enderutilities:enderpart:1>],
			[<ore:obsidian>, <enderutilities:enderpart:1>, <ore:obsidian>]
		]
	],
	<enderutilities:endercapacitor:1>: [
		[
			[null, <minecraft:ender_pearl:0>, null],
			[<enderutilities:enderpart:1>, metals.reinforcedMetal.ingot, <enderutilities:enderpart:1>],
			[<ore:obsidian>, <enderutilities:enderpart:1>, <ore:obsidian>]
		]
	],
	<enderutilities:endercapacitor:2>: [
		[
			[<ore:obsidian>, <minecraft:ender_pearl:0>, <ore:obsidian>],
			[<enderutilities:enderpart:2>, metals.enhancedGalgadorian.ingot, <enderutilities:enderpart:2>],
			[<ore:obsidian>, <enderutilities:enderpart:2>, <ore:obsidian>]
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
	<enderutilities:endercapacitor:1>,
	<enderutilities:endercapacitor:2>,
	<enderutilities:enderpart:1>,
	<enderutilities:enderpart:2>,
	<enderutilities:enderpart:11>,
	<enderutilities:enderpart:12>,
	<enderutilities:enderpart:20>,
	<enderutilities:enderpart:0>
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
