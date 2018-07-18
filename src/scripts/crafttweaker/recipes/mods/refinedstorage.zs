/*
    SevTech: Ages Refined Storage Recipe Script

    This script handles the recipes for Refined Storage.

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
	<refinedstorage:grid:1>: [
		[
			[<refinedstorage:grid>],
			[<extendedcrafting:table_advanced>],
			[<appliedenergistics2:material:24>]
		]
	],
	<refinedstorage:grid>: [
		[
			[<extendedcrafting:material:7>, <appliedenergistics2:material:43>, <appliedenergistics2:quartz_glass>],
			[<appliedenergistics2:material:22>, <refinedstorage:machine_casing>, <appliedenergistics2:quartz_glass>],
			[<extendedcrafting:material:7>, <appliedenergistics2:material:44>, <appliedenergistics2:quartz_glass>]
		]
	],
	<refinedstorage:controller>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <darkutils:shulker_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<ore:itemSilicon>, <refinedstorage:machine_casing>, <ore:itemSilicon>],
			[<refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:external_storage>: [
		[
			[<appliedenergistics2:material:43>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:44>],
			[<ore:chest>, <refinedstorage:cable>, <ore:chest>],
			[<refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:22>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:cable> * 12: [
		[
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
			[<ore:chest>, <minecraft:redstone>, <ore:chest>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:importer>: [
		[
			[<refinedstorage:cable>, <appliedenergistics2:material:44>],
			[<appliedenergistics2:material:22>]
		]
	],
	<refinedstorage:exporter>: [
		[
			[<refinedstorage:cable>, <appliedenergistics2:material:43>],
			[<appliedenergistics2:material:22>]
		]
	],
	<refinedstorage:interface>: [
		[
			[<refinedstorage:exporter>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:importer>],
			[<refinedstorage:quartz_enriched_iron>, null, <refinedstorage:quartz_enriched_iron>],
			[<appliedenergistics2:quartz_glass>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:quartz_glass>]
		]
	],
	<refinedstorage:network_card>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:paper>, <ore:processorEngineering>, <minecraft:paper>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:security_card>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:network_card>, <ore:processorEngineering>, <refinedstorage:network_card>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:crafting_monitor>: [
		[
			[<ore:processorLogic>, <refinedstorage:pattern>, <ore:blockGlass>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <ore:blockGlass>],
			[<ore:processorLogic>, <refinedstorage:pattern>, <ore:blockGlass>]
		]
	],
	<refinedstorage:storage_monitor>: [
		[
			[<ore:processorCalculation>, <appliedenergistics2:material:43>, <ore:blockGlass>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <ore:blockGlass>],
			[<ore:processorCalculation>, <appliedenergistics2:material:44>, <ore:blockGlass>]
		]
	],
	<refinedstorage:crafter_manager>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:crafter>, <ore:blockGlass>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <ore:blockGlass>],
			[<appliedenergistics2:material:24>, <refinedstorage:crafter>, <ore:blockGlass>]
		]
	],
	<refinedstorage:crafter>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:43>, <refinedstorage:quartz_enriched_iron>],
			[<ore:processorEngineering>, <refinedstorage:machine_casing>, <ore:processorEngineering>],
			[<refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:44>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:disk_drive>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <ore:chest>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:constructor>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:43>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:redstone>, <refinedstorage:cable>, <minecraft:redstone>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:destructor>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:44>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:redstone>, <refinedstorage:cable>, <minecraft:redstone>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:reader>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:44>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:redstone>, <refinedstorage:cable>, <minecraft:redstone>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:writer>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:43>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:redstone>, <refinedstorage:cable>, <minecraft:redstone>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:detector>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:comparator>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:redstone>, <refinedstorage:machine_casing>, <minecraft:redstone>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:wireless_transmitter>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:ender_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:network_transmitter>: [
		[
			[<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>],
			[<appliedenergistics2:material:43>, <refinedstorage:machine_casing>, <appliedenergistics2:material:44>],
			[<ore:processorEngineering>, <ore:processorEngineering>, <ore:processorEngineering>]
		]
	],
	<refinedstorage:network_receiver>: [
		[
			[<ore:processorEngineering>, <ore:processorEngineering>, <ore:processorEngineering>],
			[<appliedenergistics2:material:43>, <refinedstorage:machine_casing>, <appliedenergistics2:material:44>],
			[<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>]
		]
	],
	<refinedstorage:disk_manipulator>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage_housing>, <refinedstorage:quartz_enriched_iron>],
			[<appliedenergistics2:material:43>, <refinedstorage:machine_casing>, <appliedenergistics2:material:44>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage_housing>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:storage_part:3>: [
		[
			[<ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>],
			[<refinedstorage:storage_part:2>, <minecraft:redstone>, <refinedstorage:storage_part:2>],
			[<ore:processorEngineering>, <refinedstorage:storage_part:2>, <ore:processorEngineering>]
		]
	],
	<refinedstorage:storage_part:1>: [
		[
			[<ore:processorCalculation>, <refinedstorage:quartz_enriched_iron>, <ore:processorCalculation>],
			[<refinedstorage:storage_part>, <minecraft:redstone>, <refinedstorage:storage_part>],
			[<ore:processorCalculation>, <refinedstorage:storage_part>, <ore:processorCalculation>]
		]
	],
	<refinedstorage:storage_part:2>: [
		[
			[<ore:processorLogic>, <refinedstorage:quartz_enriched_iron>, <ore:processorLogic>],
			[<refinedstorage:storage_part:1>, <minecraft:redstone>, <refinedstorage:storage_part:1>],
			[<ore:processorLogic>, <refinedstorage:storage_part:1>, <ore:processorLogic>]
		]
	],
	<refinedstorage:fluid_storage_part:1>: [
		[
			[<ore:processorCalculation>, <refinedstorage:quartz_enriched_iron>, <ore:processorCalculation>],
			[<refinedstorage:fluid_storage_part>, <minecraft:bucket>, <refinedstorage:fluid_storage_part>],
			[<ore:processorCalculation>, <refinedstorage:fluid_storage_part>, <ore:processorCalculation>]
		]
	],
	<refinedstorage:fluid_storage_part:3>: [
		[
			[<ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>],
			[<refinedstorage:fluid_storage_part:2>, <minecraft:bucket>, <refinedstorage:fluid_storage_part:2>],
			[<ore:processorEngineering>, <refinedstorage:fluid_storage_part:2>, <ore:processorEngineering>]
		]
	],
	<refinedstorage:fluid_storage_part:2>: [
		[
			[<ore:processorLogic>, <refinedstorage:quartz_enriched_iron>, <ore:processorLogic>],
			[<refinedstorage:fluid_storage_part:1>, <minecraft:bucket>, <refinedstorage:fluid_storage_part:1>],
			[<ore:processorLogic>, <refinedstorage:fluid_storage_part:1>, <ore:processorLogic>]
		]
	],
	<refinedstorage:wireless_grid>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:ender_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:grid>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:wireless_fluid_grid>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:ender_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:grid:3>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:wireless_crafting_monitor>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:ender_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:crafting_monitor>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:upgrade>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <ore:blockGlass>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:blockGlass>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:wrench>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <ore:processorCalculation>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
			[null, <refinedstorage:quartz_enriched_iron>, null]
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
	<refinedstorage:cable>,
	<refinedstorage:constructor>,
	<refinedstorage:controller>,
	<refinedstorage:crafter>,
	<refinedstorage:crafter_manager>,
	<refinedstorage:crafting_monitor>,
	<refinedstorage:destructor>,
	<refinedstorage:detector>,
	<refinedstorage:disk_drive>,
	<refinedstorage:disk_manipulator>,
	<refinedstorage:exporter>,
	<refinedstorage:external_storage>,
	<refinedstorage:fluid_storage_part:1>,
	<refinedstorage:fluid_storage_part:2>,
	<refinedstorage:fluid_storage_part:3>,
	<refinedstorage:grid:1>,
	<refinedstorage:grid>,
	<refinedstorage:importer>,
	<refinedstorage:interface>,
	<refinedstorage:network_card>,
	<refinedstorage:network_receiver>,
	<refinedstorage:network_transmitter>,
	<refinedstorage:quartz_enriched_iron>,
	<refinedstorage:reader>,
	<refinedstorage:security_card>,
	<refinedstorage:storage_monitor>,
	<refinedstorage:storage_part:1>,
	<refinedstorage:storage_part:2>,
	<refinedstorage:storage_part:3>,
	<refinedstorage:upgrade>,
	<refinedstorage:wireless_crafting_monitor>,
	<refinedstorage:wireless_fluid_grid>,
	<refinedstorage:wireless_grid>,
	<refinedstorage:wireless_transmitter>,
	<refinedstorage:wrench>,
	<refinedstorage:writer>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorage.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorage.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorage.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorage.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorage.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.refinedstorage.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.refinedstorage.removeRecipes;

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
