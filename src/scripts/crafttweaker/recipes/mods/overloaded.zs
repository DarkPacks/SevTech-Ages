/*
    SevTech: Ages Over loaded Recipe Script

    This script handles the recipes for Over loaded.

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
	<overloaded:infinite_water_source>: [
		[
			[<actuallyadditions:block_crystal_empowered:1>, <bloodmagic:sigil_water>, <actuallyadditions:block_crystal_empowered:1>],
			[<mekanism:machineblock:12>, <mysticalagriculture:crafting:48>, <mekanism:machineblock:12>],
			[<actuallyadditions:block_crystal_empowered:1>, <immersiveengineering:metal_device0:5>, <actuallyadditions:block_crystal_empowered:1>]
		]
	],
	<overloaded:infinite_barrel>: [
		[
			[<quantumstorage:quantum_storage_unit>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <quantumstorage:quantum_storage_unit>],
			[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <industrialforegoing:black_hole_unit>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]})],
			[<quantumstorage:quantum_storage_unit>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <quantumstorage:quantum_storage_unit>]
		]
	],
	<overloaded:infinite_tank>: [
		[
			[<quantumstorage:quantum_tank>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <quantumstorage:quantum_tank>],
			[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <industrialforegoing:black_hole_tank>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]})],
			[<quantumstorage:quantum_tank>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <quantumstorage:quantum_tank>]
		]
	],
	<overloaded:infinite_capacitor>: [
		[
			[<extraplanets:ultimate_battery>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <actuallyadditions:item_battery_quintuple>],
			[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <integrateddynamics:energy_battery>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]})],
			[<actuallyadditions:item_battery_quintuple>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <extraplanets:ultimate_battery>]
		]
	],
	<overloaded:hyper_item_receiver>: [
		[
			[<mekanism:transmitter:3>, <mekanism:transmitter:3>, <mekanism:transmitter:3>],
			[<mekanism:transmitter:3>, <enderstorage:ender_storage>, <mekanism:transmitter:3>],
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore>]
		]
	],
	<overloaded:hyper_item_sender>: [
		[
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:3>, <mekanism:teleportationcore>],
			[<mekanism:transmitter:3>, <enderstorage:ender_storage>, <mekanism:transmitter:3>],
			[<mekanism:transmitter:3>, <mekanism:transmitter:3>, <mekanism:transmitter:3>]
		]
	],
	<overloaded:hyper_fluid_receiver>: [
		[
			[<mekanism:transmitter:1>, <mekanism:transmitter:1>, <mekanism:transmitter:1>],
			[<mekanism:transmitter:1>, <enderstorage:ender_storage:1>, <mekanism:transmitter:1>],
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore>]
		]
	],
	<overloaded:hyper_fluid_sender>: [
		[
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore>],
			[<mekanism:transmitter:1>, <enderstorage:ender_storage:1>, <mekanism:transmitter:1>],
			[<mekanism:transmitter:1>, <mekanism:transmitter:1>, <mekanism:transmitter:1>]
		]
	],
	<overloaded:hyper_energy_receiver>: [
		[
			[<ore:universalCable>, <ore:universalCable>, <ore:universalCable>],
			[<ore:universalCable>, <rftools:powercell_advanced>, <ore:universalCable>],
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore>]
		]
	],
	<overloaded:hyper_energy_sender>: [
		[
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore>],
			[<ore:universalCable>, <rftools:powercell_advanced>, <ore:universalCable>],
			[<ore:universalCable>, <ore:universalCable>, <ore:universalCable>]
		]
	],
	<overloaded:linking_card>: [
		[
			[<refinedstorage:wrench>, <rftools:powercell_card>, <enderutilities:linkcrystal:1>],
			[<mekanism:teleportationcore>, <astralsorcery:itemlinkingtool>, <mekanism:teleportationcore>],
			[<enderutilities:linkcrystal>, <rftools:powercell_card>, <integrateddynamics:wrench>]
		]
	],
	<overloaded:energy_extractor>: [
		[
			[<refinedstorage:interface>, null, <appliedenergistics2:interface>],
			[<ore:universalCable>, <ore:universalCable>, <ore:universalCable>],
			[<appliedenergistics2:interface>, null, <refinedstorage:interface>]
		]
	],
	<overloaded:multi_tool>: [
		[
			[<actuallyadditions:block_placer>, <mysticalagriculture:supremium_shovel>, <betterwithmods:buddy_block>],
			[<actuallyadditions:item_battery_quintuple>, <mysticalagriculture:supremium_axe>, <actuallyadditions:item_battery_quintuple>],
			[<betterwithmods:buddy_block>, <mysticalagriculture:supremium_pickaxe>, <actuallyadditions:block_placer>]
		]
	],
	<overloaded:player_interface>: [
		[
			[null, <appliedenergistics2:interface>, null],
			[null, <modularrouters:module:13>, null],
			[null, <refinedstorage:interface>, null]
		]
	],
	<overloaded:item_interface>: [
		[
			[null, <appliedenergistics2:interface>, null],
			[null, <actuallyadditions:block_item_viewer>, null],
			[null, <refinedstorage:interface>, null]
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
static removeRecipes as IIngredient[] = [];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.overloaded.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.overloaded.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.overloaded.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.overloaded.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.overloaded.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.overloaded.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.overloaded.removeRecipes;

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
