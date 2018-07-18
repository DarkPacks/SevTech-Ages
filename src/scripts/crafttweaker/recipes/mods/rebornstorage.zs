/*
    SevTech: Ages Reborn Storage Recipe Script

    This script handles the recipes for Reborn Storage.

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
	<rebornstorage:multicrafter>: [
		[
			[<refinedstorage:quartz_enriched_iron>, metals.gold.ingot, <refinedstorage:quartz_enriched_iron>],
			[metals.gold.ingot, <appliedenergistics2:material:22>, metals.gold.ingot],
			[<refinedstorage:quartz_enriched_iron>, metals.gold.ingot, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<rebornstorage:multicrafter:1>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:iron_bars>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:iron_bars>, <appliedenergistics2:material:22>, <minecraft:iron_bars>],
			[<refinedstorage:quartz_enriched_iron>, <minecraft:iron_bars>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<rebornstorage:multicrafter:2>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:quartz>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:glowstone_dust>, <appliedenergistics2:material:22>, <minecraft:glowstone_dust>],
			[<refinedstorage:quartz_enriched_iron>, <minecraft:quartz>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<rebornstorage:multicrafter:3>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <tconstruct:tooltables>, <refinedstorage:quartz_enriched_iron>],
			[<appliedenergistics2:material:24>, <appliedenergistics2:material:22>, <appliedenergistics2:material:24>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage_part>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<rebornstorage:storagepart>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<refinedstorage:storage_part:3>, <minecraft:redstone>, <refinedstorage:storage_part:3>],
			[<appliedenergistics2:material:24>, <refinedstorage:storage_part:3>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:1>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart>, <minecraft:redstone>, <rebornstorage:storagepart>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:2>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:1>, <minecraft:redstone>, <rebornstorage:storagepart:1>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:1>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:3>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:2>, <minecraft:redstone>, <rebornstorage:storagepart:2>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:2>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:4>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<refinedstorage:fluid_storage_part:3>, <minecraft:bucket>, <refinedstorage:fluid_storage_part:3>],
			[<appliedenergistics2:material:24>, <refinedstorage:fluid_storage_part:3>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:5>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:4>, <minecraft:bucket>, <rebornstorage:storagepart:4>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:4>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:6>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:5>, <minecraft:bucket>, <rebornstorage:storagepart:5>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:5>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:7>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:6>, <minecraft:bucket>, <rebornstorage:storagepart:6>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:6>, <appliedenergistics2:material:24>]
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
	<rebornstorage:multicrafter:1>,
	<rebornstorage:multicrafter:2>,
	<rebornstorage:multicrafter:3>,
	<rebornstorage:multicrafter>,
	<rebornstorage:storagepart:1>,
	<rebornstorage:storagepart:2>,
	<rebornstorage:storagepart:3>,
	<rebornstorage:storagepart:4>,
	<rebornstorage:storagepart:5>,
	<rebornstorage:storagepart:6>,
	<rebornstorage:storagepart:7>,
	<rebornstorage:storagepart>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.rebornstorage.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.rebornstorage.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.rebornstorage.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.rebornstorage.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.rebornstorage.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.rebornstorage.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.rebornstorage.removeRecipes;

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
