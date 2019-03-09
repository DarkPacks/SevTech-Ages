/*
    SevTech: Ages Spartan Shields Recipe Script

    This script handles the recipes for Spartan Shields.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.betterwithmods.MiniBlocks;
import mods.zenstages.Utils;

import scripts.crafttweaker.craftingUtils;
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
	<spartanshields:shield_basic_stone:0> : [
		[
			[null, <minecraft:stone:0>, null],
			[<minecraft:stone:0>, <spartanshields:shield_basic_wood:0>, <minecraft:stone:0>],
			[null, <minecraft:stone:0>, null]
		]
	],
	<spartanshields:shield_basic_wood:0> : [
		[
			[null, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, null]
		]
	],
	<spartanshields:shield_basic_diamond:0> : [
		[
			[null, <minecraft:diamond:0>, null],
			[<minecraft:diamond:0>, <spartanshields:shield_basic_iron:0>, <minecraft:diamond:0>],
			[null, <minecraft:diamond:0>, null]
		]
	],
	<spartanshields:shield_riot_rftools:0> : [
		[
			[null, <actuallyadditions:item_battery_quadruple:0>, null],
			[<tconstruct:materials:14>, <spartanshields:shield_basic_copper:0>, <tconstruct:materials:14>],
			[null, <rftools:shield_block3:0>, null]
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
