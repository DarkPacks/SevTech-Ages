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

import scripts.crafttweaker.utils;
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
	<overloaded:infinite_water_source:0>: [
		[
			[<actuallyadditions:block_crystal_empowered:1>, <bloodmagic:sigil_water:0>, <actuallyadditions:block_crystal_empowered:1>],
			[<mekanism:machineblock:12>, <mysticalagriculture:crafting:48>, <mekanism:machineblock:12>],
			[<actuallyadditions:block_crystal_empowered:1>, <immersiveengineering:metal_device0:5>, <actuallyadditions:block_crystal_empowered:1>]
		]
	],
	<overloaded:infinite_barrel:0>: [
		[
			[<quantumstorage:quantum_storage_unit:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench}), <quantumstorage:quantum_storage_unit:0>],
			[<minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench}), <industrialforegoing:black_hole_unit:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench})],
			[<quantumstorage:quantum_storage_unit:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench}), <quantumstorage:quantum_storage_unit:0>]
		]
	],
	<overloaded:infinite_tank:0>: [
		[
			[<quantumstorage:quantum_tank:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench}), <quantumstorage:quantum_tank:0>],
			[<minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench}), <industrialforegoing:black_hole_tank:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench})],
			[<quantumstorage:quantum_tank:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench}), <quantumstorage:quantum_tank:0>]
		]
	],
	<overloaded:infinite_capacitor:0>: [
		[
			[<extraplanets:ultimate_battery:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench}), <actuallyadditions:item_battery_quintuple:0>],
			[<minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench}), <integrateddynamics:energy_battery:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench})],
			[<actuallyadditions:item_battery_quintuple:0>, <minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:infinity>.makeEnchantment(1)).ench}), <extraplanets:ultimate_battery:0>]
		]
	],
	<overloaded:hyper_item_receiver:0>: [
		[
			[<mekanism:transmitter:3>, <mekanism:transmitter:3>, <mekanism:transmitter:3>],
			[<mekanism:transmitter:3>, <enderstorage:ender_storage:0>, <mekanism:transmitter:3>],
			[<mekanism:teleportationcore:0>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore:0>]
		]
	],
	<overloaded:hyper_item_sender:0>: [
		[
			[<mekanism:teleportationcore:0>, <bloodmagic:teleposition_focus:3>, <mekanism:teleportationcore:0>],
			[<mekanism:transmitter:3>, <enderstorage:ender_storage:0>, <mekanism:transmitter:3>],
			[<mekanism:transmitter:3>, <mekanism:transmitter:3>, <mekanism:transmitter:3>]
		]
	],
	<overloaded:hyper_fluid_receiver:0>: [
		[
			[<mekanism:transmitter:1>, <mekanism:transmitter:1>, <mekanism:transmitter:1>],
			[<mekanism:transmitter:1>, <enderstorage:ender_storage:1>, <mekanism:transmitter:1>],
			[<mekanism:teleportationcore:0>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore:0>]
		]
	],
	<overloaded:hyper_fluid_sender:0>: [
		[
			[<mekanism:teleportationcore:0>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore:0>],
			[<mekanism:transmitter:1>, <enderstorage:ender_storage:1>, <mekanism:transmitter:1>],
			[<mekanism:transmitter:1>, <mekanism:transmitter:1>, <mekanism:transmitter:1>]
		]
	],
	<overloaded:hyper_energy_receiver:0>: [
		[
			[<ore:universalCable>, <ore:universalCable>, <ore:universalCable>],
			[<ore:universalCable>, <rftools:powercell_advanced:0>, <ore:universalCable>],
			[<mekanism:teleportationcore:0>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore:0>]
		]
	],
	<overloaded:hyper_energy_sender:0>: [
		[
			[<mekanism:teleportationcore:0>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore:0>],
			[<ore:universalCable>, <rftools:powercell_advanced:0>, <ore:universalCable>],
			[<ore:universalCable>, <ore:universalCable>, <ore:universalCable>]
		]
	],
	<overloaded:linking_card:0>: [
		[
			[<appliedenergistics2:nether_quartz_wrench:0>, <rftools:powercell_card:0>, <enderutilities:linkcrystal:1>],
			[<mekanism:teleportationcore:0>, <astralsorcery:itemlinkingtool:0>, <mekanism:teleportationcore:0>],
			[<enderutilities:linkcrystal:0>, <rftools:powercell_card:0>, <integrateddynamics:wrench:0>]
		]
	],
	<overloaded:energy_extractor:0>: [
		[
			[<refinedstorage:interface:0>, null, <appliedenergistics2:interface:0>],
			[<ore:universalCable>, <ore:universalCable>, <ore:universalCable>],
			[<appliedenergistics2:interface:0>, null, <refinedstorage:interface:0>]
		]
	],
	<overloaded:multi_tool:0>: [
		[
			[<actuallyadditions:block_placer:0>, <mysticalagriculture:supremium_shovel:0>, <betterwithmods:buddy_block:0>],
			[<actuallyadditions:item_battery_quintuple:0>, <mysticalagriculture:supremium_axe:0>, <actuallyadditions:item_battery_quintuple:0>],
			[<betterwithmods:buddy_block:0>, <mysticalagriculture:supremium_pickaxe:0>, <actuallyadditions:block_placer:0>]
		]
	],
	<overloaded:player_interface:0>: [
		[
			[<appliedenergistics2:interface:0>],
			[<modularrouters:module:13>],
			[<refinedstorage:interface:0>]
		]
	],
	<overloaded:item_interface:0>: [
		[
			[<appliedenergistics2:interface:0>],
			[<actuallyadditions:block_item_viewer:0>],
			[<refinedstorage:interface:0>]
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
static removeRecipes as IItemStack[] = [];

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
