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
			[<refinedstorage:grid:0>],
			[<extendedcrafting:table_advanced:0>],
			[<appliedenergistics2:material:24>]
		]
	],
	<refinedstorage:grid:0>: [
		[
			[<extendedcrafting:material:7>, <appliedenergistics2:material:43>, <appliedenergistics2:quartz_glass:0>],
			[<appliedenergistics2:material:22>, <refinedstorage:machine_casing:0>, <appliedenergistics2:quartz_glass:0>],
			[<extendedcrafting:material:7>, <appliedenergistics2:material:44>, <appliedenergistics2:quartz_glass:0>]
		]
	],
	<refinedstorage:controller:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <darkutils:shulker_pearl:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<ore:itemSilicon>, <refinedstorage:machine_casing:0>, <ore:itemSilicon>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:itemSilicon>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:external_storage:0>: [
		[
			[<appliedenergistics2:material:43>, <refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:44>],
			[<ore:chest>, <refinedstorage:cable:0>, <ore:chest>],
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:22>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:cable:0> * 12: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<ore:chest>, <minecraft:redstone:0>, <ore:chest>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:importer:0>: [
		[
			[<refinedstorage:cable:0>, <appliedenergistics2:material:44>],
			[<appliedenergistics2:material:22>]
		]
	],
	<refinedstorage:exporter:0>: [
		[
			[<refinedstorage:cable:0>, <appliedenergistics2:material:43>],
			[<appliedenergistics2:material:22>]
		]
	],
	<refinedstorage:interface:0>: [
		[
			[<refinedstorage:exporter:0>, <refinedstorage:quartz_enriched_iron:0>, <refinedstorage:importer:0>],
			[<refinedstorage:quartz_enriched_iron:0>, null, <refinedstorage:quartz_enriched_iron:0>],
			[<appliedenergistics2:quartz_glass:0>, <refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:quartz_glass:0>]
		]
	],
	<refinedstorage:network_card:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<minecraft:paper:0>, <ore:processorEngineering>, <minecraft:paper:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:security_card:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:network_card:0>, <ore:processorEngineering>, <refinedstorage:network_card:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:crafting_monitor:0>: [
		[
			[<ore:processorLogic>, <refinedstorage:pattern:0>, <ore:blockGlass>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:machine_casing:0>, <ore:blockGlass>],
			[<ore:processorLogic>, <refinedstorage:pattern:0>, <ore:blockGlass>]
		]
	],
	<refinedstorage:storage_monitor:0>: [
		[
			[<ore:processorCalculation>, <appliedenergistics2:material:43>, <ore:blockGlass>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:machine_casing:0>, <ore:blockGlass>],
			[<ore:processorCalculation>, <appliedenergistics2:material:44>, <ore:blockGlass>]
		]
	],
	<refinedstorage:crafter_manager:0>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:crafter:0>, <ore:blockGlass>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:machine_casing:0>, <ore:blockGlass>],
			[<appliedenergistics2:material:24>, <refinedstorage:crafter:0>, <ore:blockGlass>]
		]
	],
	<refinedstorage:crafter:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:43>, <refinedstorage:quartz_enriched_iron:0>],
			[<ore:processorEngineering>, <refinedstorage:machine_casing:0>, <ore:processorEngineering>],
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:44>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:disk_drive:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <ore:chest>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:machine_casing:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:constructor:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:43>, <refinedstorage:quartz_enriched_iron:0>],
			[<minecraft:redstone:0>, <refinedstorage:cable:0>, <minecraft:redstone:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:destructor:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:44>, <refinedstorage:quartz_enriched_iron:0>],
			[<minecraft:redstone:0>, <refinedstorage:cable:0>, <minecraft:redstone:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:reader:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:44>, <refinedstorage:quartz_enriched_iron:0>],
			[<minecraft:redstone:0>, <refinedstorage:cable:0>, <minecraft:redstone:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:writer:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:43>, <refinedstorage:quartz_enriched_iron:0>],
			[<minecraft:redstone:0>, <refinedstorage:cable:0>, <minecraft:redstone:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:detector:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:comparator:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<minecraft:redstone:0>, <refinedstorage:machine_casing:0>, <minecraft:redstone:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:wireless_transmitter:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:ender_pearl:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:machine_casing:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:network_transmitter:0>: [
		[
			[<minecraft:ender_pearl:0>, <minecraft:ender_pearl:0>, <minecraft:ender_pearl:0>],
			[<appliedenergistics2:material:43>, <refinedstorage:machine_casing:0>, <appliedenergistics2:material:44>],
			[<ore:processorEngineering>, <ore:processorEngineering>, <ore:processorEngineering>]
		]
	],
	<refinedstorage:network_receiver:0>: [
		[
			[<ore:processorEngineering>, <ore:processorEngineering>, <ore:processorEngineering>],
			[<appliedenergistics2:material:43>, <refinedstorage:machine_casing:0>, <appliedenergistics2:material:44>],
			[<minecraft:ender_pearl:0>, <minecraft:ender_pearl:0>, <minecraft:ender_pearl:0>]
		]
	],
	<refinedstorage:disk_manipulator:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:storage_housing:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<appliedenergistics2:material:43>, <refinedstorage:machine_casing:0>, <appliedenergistics2:material:44>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:storage_housing:0>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:storage_part:3>: [
		[
			[<ore:processorEngineering>, <refinedstorage:quartz_enriched_iron:0>, <ore:processorEngineering>],
			[<refinedstorage:storage_part:2>, <minecraft:redstone:0>, <refinedstorage:storage_part:2>],
			[<ore:processorEngineering>, <refinedstorage:storage_part:2>, <ore:processorEngineering>]
		]
	],
	<refinedstorage:storage_part:1>: [
		[
			[<ore:processorCalculation>, <refinedstorage:quartz_enriched_iron:0>, <ore:processorCalculation>],
			[<refinedstorage:storage_part:0>, <minecraft:redstone:0>, <refinedstorage:storage_part:0>],
			[<ore:processorCalculation>, <refinedstorage:storage_part:0>, <ore:processorCalculation>]
		]
	],
	<refinedstorage:storage_part:2>: [
		[
			[<ore:processorLogic>, <refinedstorage:quartz_enriched_iron:0>, <ore:processorLogic>],
			[<refinedstorage:storage_part:1>, <minecraft:redstone:0>, <refinedstorage:storage_part:1>],
			[<ore:processorLogic>, <refinedstorage:storage_part:1>, <ore:processorLogic>]
		]
	],
	<refinedstorage:fluid_storage_part:1>: [
		[
			[<ore:processorCalculation>, <refinedstorage:quartz_enriched_iron:0>, <ore:processorCalculation>],
			[<refinedstorage:fluid_storage_part:0>, <minecraft:bucket:0>, <refinedstorage:fluid_storage_part:0>],
			[<ore:processorCalculation>, <refinedstorage:fluid_storage_part:0>, <ore:processorCalculation>]
		]
	],
	<refinedstorage:fluid_storage_part:3>: [
		[
			[<ore:processorEngineering>, <refinedstorage:quartz_enriched_iron:0>, <ore:processorEngineering>],
			[<refinedstorage:fluid_storage_part:2>, <minecraft:bucket:0>, <refinedstorage:fluid_storage_part:2>],
			[<ore:processorEngineering>, <refinedstorage:fluid_storage_part:2>, <ore:processorEngineering>]
		]
	],
	<refinedstorage:fluid_storage_part:2>: [
		[
			[<ore:processorLogic>, <refinedstorage:quartz_enriched_iron:0>, <ore:processorLogic>],
			[<refinedstorage:fluid_storage_part:1>, <minecraft:bucket:0>, <refinedstorage:fluid_storage_part:1>],
			[<ore:processorLogic>, <refinedstorage:fluid_storage_part:1>, <ore:processorLogic>]
		]
	],
	<refinedstorage:wireless_grid:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:ender_pearl:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:grid:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:wireless_fluid_grid:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:ender_pearl:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:grid:3>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:wireless_crafting_monitor:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:ender_pearl:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:crafting_monitor:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:upgrade:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <ore:blockGlass>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <ore:blockGlass>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
	<refinedstorage:wrench>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:material:22>, <refinedstorage:quartz_enriched_iron:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>, <refinedstorage:quartz_enriched_iron:0>],
			[null, <refinedstorage:quartz_enriched_iron:0>, null]
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
	<refinedstorage:cable:0>,
	<refinedstorage:constructor:0>,
	<refinedstorage:controller:0>,
	<refinedstorage:crafter:0>,
	<refinedstorage:crafter_manager:0>,
	<refinedstorage:crafting_monitor:0>,
	<refinedstorage:destructor:0>,
	<refinedstorage:detector:0>,
	<refinedstorage:disk_drive:0>,
	<refinedstorage:disk_manipulator:0>,
	<refinedstorage:exporter:0>,
	<refinedstorage:external_storage:0>,
	<refinedstorage:fluid_interface>,
	<refinedstorage:fluid_storage_part:1>,
	<refinedstorage:fluid_storage_part:2>,
	<refinedstorage:fluid_storage_part:3>,
	<refinedstorage:grid:2>,
	<refinedstorage:grid:3>,
	<refinedstorage:grid:1>,
	<refinedstorage:grid:0>,
	<refinedstorage:importer:0>,
	<refinedstorage:interface:0>,
	<refinedstorage:network_card:0>,
	<refinedstorage:network_receiver:0>,
	<refinedstorage:network_transmitter:0>,
	<refinedstorage:quartz_enriched_iron:0>,
	<refinedstorage:reader:0>,
	<refinedstorage:security_card:0>,
	<refinedstorage:storage_monitor:0>,
	<refinedstorage:storage_part:1>,
	<refinedstorage:storage_part:2>,
	<refinedstorage:storage_part:3>,
	<refinedstorage:upgrade:0>,
	<refinedstorage:wireless_crafting_monitor:0>,
	<refinedstorage:wireless_fluid_grid:0>,
	<refinedstorage:wireless_grid:0>,
	<refinedstorage:wireless_transmitter:0>,
	<refinedstorage:wrench>,
	<refinedstorage:writer:0>
];

static removeRegex as string[] = [
	"refinedstorage:cut_advanced_processor",
	"refinedstorage:cut_basic_processor",
	"refinedstorage:cut_improved_processor",
	"refinedstorage:cut_silicon",
	"refinedstorage:raw_advanced_processor",
	"refinedstorage:raw_basic_processor",
	"refinedstorage:raw_improved_processor"
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
	recipeUtil.removeRecipes(removeRegex);
}
