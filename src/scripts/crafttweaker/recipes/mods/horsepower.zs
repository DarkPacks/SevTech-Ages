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

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<horsepower:hand_grindstone>: [
		[
			[null, <ore:stickWood>.firstItem, null],
			[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
			[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
		]
	],
	<horsepower:grindstone>: [
		[
			[<minecraft:lead>, <ore:stickWood>.firstItem, <minecraft:lead>],
			[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
			[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
		]
	],
	<horsepower:press>: [
		[
			[<minecraft:lead>, <ore:stickWood>.firstItem, <minecraft:lead>],
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
	<horsepower:dough>: [
		[<ore:foodFlour>, <ore:foodSalt>, <ore:bottleWater>.transformReplace(<minecraft:glass_bottle>)],
		[<ore:foodFlour>, <ore:foodSalt>, craftingUtils.getBucketIngredient(<liquid:water>)],
		[<ore:foodFlour>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<horsepower:dough>,
	<horsepower:grindstone>,
	<horsepower:hand_grindstone>,
	<horsepower:press>,
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.horsepower.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.horsepower.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.horsepower.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.horsepower.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.horsepower.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.horsepower.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.horsepower.removeRecipes;

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
