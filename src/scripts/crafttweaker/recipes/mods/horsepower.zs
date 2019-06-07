/*
    SevTech: Ages Horse Power Recipe Script

    This script handles the recipes for Horse Power.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.crafttweaker.craftingUtils;

import mods.horsepower.Recipes;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<horsepower:hand_grindstone:0>: [
		[
			[null, <ore:stickWood>.firstItem, null],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]
		]
	],
	<horsepower:grindstone:0>: [
		[
			[<minecraft:lead:0>, <ore:stickWood>.firstItem, <minecraft:lead:0>],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]
		]
	],
	<horsepower:press:0>: [
		[
			[<minecraft:lead:0>, <ore:stickWood>.firstItem, <minecraft:lead:0>],
			[<ore:plankWood>, <ore:slabWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
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
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<horsepower:dough:0>: [
		[<ore:foodFlour>, <ore:foodSalt>, <ore:bottleWater>.transformReplace(<minecraft:glass_bottle:0>)],
		[<ore:foodFlour>, <ore:foodSalt>, craftingUtils.getBucketAndTankIngredient(<liquid:water>)],
		[<ore:foodFlour>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

function init() {
	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	/*
		Dynamic Chopping Block Recipes

		https://github.com/GoryMoon/HorsePower/wiki/CraftTweaker-Support
	*/
	Recipes.addShapeless(<ore:logWood>, <horsepower:chopping_block>, [<ore:logWood>]);
	Recipes.addShaped(<horsepower:chopping_block>, <horsepower:chopper>, [[<minecraft:lead:0>, <ore:stickWood>, <minecraft:lead:0>], [<ore:plankWood>, <minecraft:flint:0>, <ore:plankWood>], [<ore:plankWood>, <horsepower:chopping_block>, <ore:plankWood>]]);
}
