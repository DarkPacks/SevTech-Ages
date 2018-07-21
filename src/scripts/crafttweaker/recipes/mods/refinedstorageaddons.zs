/*
    SevTech: Ages Refined Storage Addons Recipe Script

    This script handles the recipes for Refined Storage Addons.

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
	<refinedstorageaddons:wireless_crafting_grid:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:ender_pearl:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:grid:1>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorageaddons:network_picker:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:ender_pearl:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:43>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorageaddons:network_bag:0>: [
		[
			[<minecraft:chest:0>, <minecraft:ender_pearl:0>, <minecraft:chest:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:44>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron:0>]
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
static removeRecipes as IIngredient[] = [
	<refinedstorageaddons:network_bag:0>,
	<refinedstorageaddons:network_picker:0>,
	<refinedstorageaddons:wireless_crafting_grid:0>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorageaddons.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorageaddons.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorageaddons.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorageaddons.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorageaddons.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorageaddons.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.refinedstorageaddons.removeRecipes;

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
