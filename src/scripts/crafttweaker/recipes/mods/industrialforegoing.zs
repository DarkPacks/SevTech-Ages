/*
    SevTech: Ages Industrial Foregoing Recipe Script

    This script handles the recipes for Industrial Foregoing.

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
	<industrialforegoing:conveyor:8> : [
		[
			[<industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>],
			[<industrialforegoing:conveyor:*>, <ore:dyeLightGray>, <industrialforegoing:conveyor:*>],
			[<industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>]
		]
	],
	<industrialforegoing:conveyor:3> : [
		[
			[<industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>],
			[<industrialforegoing:conveyor:*>, <ore:dyeLightBlue>, <industrialforegoing:conveyor:*>],
			[<industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>, <industrialforegoing:conveyor:*>]
		]
	],
	<industrialforegoing:petrified_fuel_generator:0>: [
		[
			[<industrialforegoing:plastic:0>, metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic:0>],
			[metals.gold.gear, <teslacorelib:machine_case:0>, metals.gold.gear],
			[<industrialforegoing:plastic:0>, <natura:netherrack_furnace:0>, <industrialforegoing:plastic:0>]
		]
	],
	<industrialforegoing:enchantment_refiner:0>: [
		[
			[<industrialforegoing:plastic:0>, <minecraft:ender_pearl:0>, <industrialforegoing:plastic:0>],
			[<minecraft:book:0>, <teslacorelib:machine_case:0>, <minecraft:enchanted_book:0>],
			[<industrialforegoing:plastic:0>, metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic:0>]
		]
	],
	<industrialforegoing:enchantment_extractor:0>: [
		[
			[<industrialforegoing:plastic:0>, <minecraft:nether_brick:0>, <industrialforegoing:plastic:0>],
			[<minecraft:book:0>, <teslacorelib:machine_case:0>, <minecraft:book:0>],
			[metals.enhancedGalgadorian.ingot, metals.gold.gear, metals.enhancedGalgadorian.ingot]
		]
	],
	<industrialforegoing:animal_independence_selector:0>: [
		[
			[<industrialforegoing:plastic:0>, metals.reinforcedMetal.ingot, <industrialforegoing:plastic:0>],
			[metals.reinforcedMetal.ingot, <teslacorelib:machine_case:0>, metals.reinforcedMetal.ingot],
			[<ore:dyePurple>, metals.gold.gear, <ore:dyePurple>]
		]
	],
	<industrialforegoing:mob_duplicator:0>: [
		[
			[<industrialforegoing:plastic:0>, <minecraft:nether_wart:0>, <industrialforegoing:plastic:0>],
			[<minecraft:magma_cream:0>, <teslacorelib:machine_case:0>, <minecraft:magma_cream:0>],
			[metals.reinforcedMetal.ingot, <minecraft:redstone:0>, metals.reinforcedMetal.ingot]
		]
	],
	<industrialforegoing:enchantment_invoker:0>: [
		[
			[<industrialforegoing:plastic:0>, <minecraft:book:0>, <industrialforegoing:plastic:0>],
			[metals.enhancedGalgadorian.ingot, <teslacorelib:machine_case:0>, metals.enhancedGalgadorian.ingot],
			[<minecraft:obsidian:0>, <minecraft:obsidian:0>, <minecraft:obsidian:0>]
		]
	],
	<industrialforegoing:villager_trade_exchanger:0>: [
		[
			[<industrialforegoing:plastic:0>, metals.gold.plate, <industrialforegoing:plastic:0>],
			[metals.reinforcedMetal.ingot, <teslacorelib:machine_case:0>, metals.reinforcedMetal.ingot],
			[<industrialforegoing:plastic:0>, metals.gold.gear, <industrialforegoing:plastic:0>]
		]
	],
	<industrialforegoing:energy_field_provider:0>: [
		[
			[metals.gold.plate, <industrialforegoing:energy_field_addon:0>, metals.gold.plate],
			[metals.gold.plate, <teslacorelib:machine_case:0>, metals.gold.plate],
			[<minecraft:repeater:0>, metals.enhancedGalgadorian.gear, <minecraft:repeater:0>]
		]
	],
	<industrialforegoing:black_hole_controller_reworked:0>: [
		[
			[<industrialforegoing:plastic:0>, metals.enhancedGalgadorian.block, <industrialforegoing:plastic:0>],
			[<minecraft:ender_eye:0>, <minecraft:ender_chest:0>, <minecraft:ender_eye:0>],
			[<industrialforegoing:plastic:0>, <teslacorelib:machine_case:0>, <industrialforegoing:plastic:0>]
		]
	],
	<industrialforegoing:range_addon:9>: [
		[
			[metals.platinum.plate, <industrialforegoing:plastic:0>, metals.platinum.plate],
			[metals.platinum.plate, <ore:paneGlass>, metals.platinum.plate],
			[metals.platinum.plate, <industrialforegoing:plastic:0>, metals.platinum.plate]
		]
	],
	<industrialforegoing:range_addon:10>: [
		[
			[<minecraft:prismarine_shard:0>, <industrialforegoing:plastic:0>, <minecraft:prismarine_shard:0>],
			[<minecraft:prismarine_shard:0>, <ore:paneGlass>, <minecraft:prismarine_shard:0>],
			[<minecraft:prismarine_shard:0>, <industrialforegoing:plastic:0>, <minecraft:prismarine_shard:0>]
		]
	],
	<industrialforegoing:range_addon:11>: [
		[
			[metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic:0>, metals.enhancedGalgadorian.ingot],
			[metals.enhancedGalgadorian.ingot, <ore:paneGlass>, metals.enhancedGalgadorian.ingot],
			[metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic:0>, metals.enhancedGalgadorian.ingot]
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
static removeRecipes as IItemStack[] = [
	<industrialforegoing:animal_independence_selector:0>,
	<industrialforegoing:black_hole_controller_reworked:0>,
	<industrialforegoing:conveyor:3>,
	<industrialforegoing:conveyor:8>,
	<industrialforegoing:enchantment_extractor:0>,
	<industrialforegoing:enchantment_invoker:0>,
	<industrialforegoing:enchantment_refiner:0>,
	<industrialforegoing:energy_field_provider:0>,
	<industrialforegoing:mob_duplicator:0>,
	<industrialforegoing:petrified_fuel_generator:0>,
	<industrialforegoing:range_addon:10>,
	<industrialforegoing:range_addon:11>,
	<industrialforegoing:range_addon:9>,
	<industrialforegoing:villager_trade_exchanger:0>
];

static removeFurnace as IIngredient[] = [
	<industrialforegoing:plastic:0>
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
	recipeUtil.removeFurnace(removeFurnace);
}
