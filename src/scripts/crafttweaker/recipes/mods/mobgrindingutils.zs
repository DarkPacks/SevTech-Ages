/*
    SevTech: Ages Mob Grinding Utils Recipe Script

    This script handles the recipes for Mob Grinding Utils.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<mob_grinding_utils:tank_sink>: [
		[
			[null, <minecraft:iron_bars:0>, null],
			[<minecraft:ender_eye:0>, <pneumaticcraft:liquid_hopper:0>, <minecraft:ender_eye:0>],
			[null, <mob_grinding_utils:tank>, null]
		]
	],
	<mob_grinding_utils:saw>: [
		[
			[<minecraft:iron_sword:0>, <appliedenergistics2:material:0>, <minecraft:iron_sword:0>],
			[<mob_grinding_utils:spikes>, <minecraft:redstone_block:0>, <mob_grinding_utils:spikes>],
			[<appliedenergistics2:material:0>, metals.iron.block, <appliedenergistics2:material:0>]
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
	<mob_grinding_utils:tank> : [
		[<mob_grinding_utils:tank>]
	],
	<mob_grinding_utils:tank_sink> : [
		[<mob_grinding_utils:tank_sink>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<mob_grinding_utils:saw>,
	<mob_grinding_utils:tank_sink>
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
