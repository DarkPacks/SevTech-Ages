/*
    SevTech: Ages Improved Backpacks Recipe Script

    This script handles the recipes for Improved Backpacks.

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
	<improvedbackpacks:blank_upgrade> : [
		[
			[null, <minecraft:leather>, null],
			[<ore:stickWood>.firstItem, <ore:plankWood>, <ore:stickWood>.firstItem],
			[null, <minecraft:leather>, null]
		]
	],
	<improvedbackpacks:upgrade> : [
		[
			[null, <minecraft:leather>, null],
			[<ore:logWood>, <improvedbackpacks:blank_upgrade>, <ore:logWood>],
			[null, <ore:logWood>, null]
		]
	],
	<improvedbackpacks:upgrade:1> : [
		[
			[null, <minecraft:leather>, null],
			[<minecraft:stone>, <improvedbackpacks:upgrade>, <minecraft:stone>],
			[null, <minecraft:stone>, null]
		]
	],
	<improvedbackpacks:upgrade:2> : [
		[
			[null, <minecraft:leather>, null],
			[metals.iron.ingot, <improvedbackpacks:upgrade:1>, metals.iron.ingot],
			[null, metals.iron.ingot, null]
		]
	],
	<improvedbackpacks:upgrade:3> : [
		[
			[null, <minecraft:leather>, null],
			[metals.gold.ingot, <improvedbackpacks:upgrade:2>, metals.gold.ingot],
			[null, metals.gold.ingot, null]
		]
	],
	<improvedbackpacks:upgrade:4> : [
		[
			[null, <minecraft:leather>, null],
			[<minecraft:diamond>, <improvedbackpacks:upgrade:3>, <minecraft:diamond>],
			[null, <minecraft:diamond>, null]
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
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.improvedbackpacks.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.improvedbackpacks.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.improvedbackpacks.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.improvedbackpacks.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.improvedbackpacks.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.improvedbackpacks.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.improvedbackpacks.removeRecipes;

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
