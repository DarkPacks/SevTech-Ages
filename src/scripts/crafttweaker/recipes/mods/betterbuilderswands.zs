/*
    SevTech: Ages Better Builder Wands Recipe Script

    This script handles the recipes for Better Builder Wands.

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
	<betterbuilderswands:wandstone:0> : [
		[
			[null, null, <ore:stone>],
			[null, <ore:logWood>, null],
			[<ore:logWood>, null, null]
		]
	],
	<betterbuilderswands:wandiron:0> : [
		[
			[null, null, metals.iron.plate],
			[null, <ore:logWood>, null],
			[<ore:logWood>, null, null]
		]
	],
	<betterbuilderswands:wanddiamond:0> : [
		[
			[null, null, metals.platinum.plate],
			[null, <ore:logWood>, null],
			[<ore:logWood>, null, null]
		]
	],
	<betterbuilderswands:wandunbreakable:0> : [
		[
			[null, null, <minecraft:nether_star:0>],
			[null, <ore:logWood>, null],
			[<ore:logWood>, null, null]
		]
	]
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
	<betterbuilderswands:wanddiamond:0>,
	<betterbuilderswands:wandiron:0>,
	<betterbuilderswands:wandstone:0>,
	<betterbuilderswands:wandunbreakable:0>
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
