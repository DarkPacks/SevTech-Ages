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
			[null, <minecraft:iron_bars>, null],
			[<minecraft:ender_eye>, <pneumaticcraft:liquid_hopper>, <minecraft:ender_eye>],
			[null, <mob_grinding_utils:tank>, null]
		]
	],
	<mob_grinding_utils:saw>: [
		[
			[<minecraft:iron_sword>, <appliedenergistics2:material>, <minecraft:iron_sword>],
			[<mob_grinding_utils:spikes>, <minecraft:redstone_block>, <mob_grinding_utils:spikes>],
			[<appliedenergistics2:material>, metals.iron.block, <appliedenergistics2:material>]
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
static removeRecipes as IIngredient[] = [
	<mob_grinding_utils:saw>,
	<mob_grinding_utils:tank_sink>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.mobgrindingutils.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.mobgrindingutils.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.mobgrindingutils.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.mobgrindingutils.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.mobgrindingutils.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.mobgrindingutils.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.mobgrindingutils.removeRecipes;

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