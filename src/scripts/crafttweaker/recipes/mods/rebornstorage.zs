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
	<rebornstorage:multicrafter:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, metals.gold.ingot, <refinedstorage:quartz_enriched_iron:0>],
			[metals.gold.ingot, <appliedenergistics2:material:22>, metals.gold.ingot],
			[<refinedstorage:quartz_enriched_iron:0>, metals.gold.ingot, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<rebornstorage:multicrafter:1>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:iron_bars:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<minecraft:iron_bars:0>, <appliedenergistics2:material:22>, <minecraft:iron_bars:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:iron_bars:0>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<rebornstorage:multicrafter:2>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:quartz:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<minecraft:glowstone_dust:0>, <appliedenergistics2:material:22>, <minecraft:glowstone_dust:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:quartz:0>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<rebornstorage:multicrafter:3>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <tconstruct:tooltables:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<appliedenergistics2:material:24>, <appliedenergistics2:material:22>, <appliedenergistics2:material:24>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:storage_part:0>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<rebornstorage:multicrafter:4>: [
		[
			[<rebornstorage:multicrafter>, <appliedenergistics2:material:43>, <rebornstorage:multicrafter>],
			[<appliedenergistics2:material:24>, <refinedstorage:interface:*>, <appliedenergistics2:material:24>],
			[<rebornstorage:multicrafter>, <appliedenergistics2:material:44>, <rebornstorage:multicrafter>]
		]
	],
	<rebornstorage:storagepart:0>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:24>],
			[<refinedstorage:storage_part:3>, <minecraft:redstone:0>, <refinedstorage:storage_part:3>],
			[<appliedenergistics2:material:24>, <refinedstorage:storage_part:3>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:1>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:0>, <minecraft:redstone:0>, <rebornstorage:storagepart:0>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:0>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:2>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:1>, <minecraft:redstone:0>, <rebornstorage:storagepart:1>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:1>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:3>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:2>, <minecraft:redstone:0>, <rebornstorage:storagepart:2>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:2>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:4>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:24>],
			[<refinedstorage:fluid_storage_part:3>, <minecraft:bucket:0>, <refinedstorage:fluid_storage_part:3>],
			[<appliedenergistics2:material:24>, <refinedstorage:fluid_storage_part:3>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:5>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:4>, <minecraft:bucket:0>, <rebornstorage:storagepart:4>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:4>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:6>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:5>, <minecraft:bucket:0>, <rebornstorage:storagepart:5>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:5>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:7>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:6>, <minecraft:bucket:0>, <rebornstorage:storagepart:6>],
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
static removeRecipes as IItemStack[] = [
	<rebornstorage:multicrafter:1>,
	<rebornstorage:multicrafter:2>,
	<rebornstorage:multicrafter:3>,
	<rebornstorage:multicrafter:4>,
	<rebornstorage:multicrafter:0>,
	<rebornstorage:storagepart:1>,
	<rebornstorage:storagepart:2>,
	<rebornstorage:storagepart:3>,
	<rebornstorage:storagepart:4>,
	<rebornstorage:storagepart:5>,
	<rebornstorage:storagepart:6>,
	<rebornstorage:storagepart:7>,
	<rebornstorage:storagepart:0>
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
