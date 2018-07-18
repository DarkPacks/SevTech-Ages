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
	<industrialforegoing:petrified_fuel_generator>: [
		[
			[<industrialforegoing:plastic>, metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic>],
			[metals.gold.gear, <teslacorelib:machine_case>, metals.gold.gear],
			[<industrialforegoing:plastic>, <natura:netherrack_furnace>, <industrialforegoing:plastic>]
		]
	],
	<industrialforegoing:enchantment_refiner>: [
		[
			[<industrialforegoing:plastic>, <minecraft:ender_pearl>, <industrialforegoing:plastic>],
			[<minecraft:book>, <teslacorelib:machine_case>, <minecraft:enchanted_book>],
			[<industrialforegoing:plastic>, metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic>]
		]
	],
	<industrialforegoing:enchantment_extractor>: [
		[
			[<industrialforegoing:plastic>, <minecraft:nether_brick>, <industrialforegoing:plastic>],
			[<minecraft:book>, <teslacorelib:machine_case>, <minecraft:book>],
			[metals.enhancedGalgadorian.ingot, metals.gold.gear, metals.enhancedGalgadorian.ingot]
		]
	],
	<industrialforegoing:animal_independence_selector>: [
		[
			[<industrialforegoing:plastic>, metals.reinforcedMetal.ingot, <industrialforegoing:plastic>],
			[metals.reinforcedMetal.ingot, <teslacorelib:machine_case>, metals.reinforcedMetal.ingot],
			[<ore:dyePurple>, metals.gold.gear, <ore:dyePurple>]
		]
	],
	<industrialforegoing:mob_duplicator>: [
		[
			[<industrialforegoing:plastic>, <minecraft:nether_wart>, <industrialforegoing:plastic>],
			[<minecraft:magma_cream>, <teslacorelib:machine_case>, <minecraft:magma_cream>],
			[metals.reinforcedMetal.ingot, <minecraft:redstone>, metals.reinforcedMetal.ingot]
		]
	],
	<industrialforegoing:enchantment_invoker>: [
		[
			[<industrialforegoing:plastic>, <minecraft:book>, <industrialforegoing:plastic>],
			[metals.enhancedGalgadorian.ingot, <teslacorelib:machine_case>, metals.enhancedGalgadorian.ingot],
			[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]
		]
	],
	<industrialforegoing:villager_trade_exchanger>: [
		[
			[<industrialforegoing:plastic>, metals.gold.plate, <industrialforegoing:plastic>],
			[metals.reinforcedMetal.ingot, <teslacorelib:machine_case>, metals.reinforcedMetal.ingot],
			[<industrialforegoing:plastic>, metals.gold.gear, <industrialforegoing:plastic>]
		]
	],
	<industrialforegoing:energy_field_provider>: [
		[
			[metals.gold.plate, <industrialforegoing:energy_field_addon>, metals.gold.plate],
			[metals.gold.plate, <teslacorelib:machine_case>, metals.gold.plate],
			[<minecraft:repeater>, metals.enhancedGalgadorian.gear, <minecraft:repeater>]
		]
	],
	<industrialforegoing:black_hole_controller>: [
		[
			[<industrialforegoing:plastic>, metals.enhancedGalgadorian.block, <industrialforegoing:plastic>],
			[<minecraft:ender_eye>, <minecraft:ender_chest>, <minecraft:ender_eye>],
			[<industrialforegoing:plastic>, <teslacorelib:machine_case>, <industrialforegoing:plastic>]
		]
	],
	<industrialforegoing:range_addon:9>: [
		[
			[metals.platinum.plate, <industrialforegoing:plastic>, metals.platinum.plate],
			[metals.platinum.plate, <ore:paneGlass>, metals.platinum.plate],
			[metals.platinum.plate, <industrialforegoing:plastic>, metals.platinum.plate]
		]
	],
	<industrialforegoing:range_addon:10>: [
		[
			[<minecraft:prismarine_shard>, <industrialforegoing:plastic>, <minecraft:prismarine_shard>],
			[<minecraft:prismarine_shard>, <ore:paneGlass>, <minecraft:prismarine_shard>],
			[<minecraft:prismarine_shard>, <industrialforegoing:plastic>, <minecraft:prismarine_shard>]
		]
	],
	<industrialforegoing:range_addon:11>: [
		[
			[metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic>, metals.enhancedGalgadorian.ingot],
			[metals.enhancedGalgadorian.ingot, <ore:paneGlass>, metals.enhancedGalgadorian.ingot],
			[metals.enhancedGalgadorian.ingot, <industrialforegoing:plastic>, metals.enhancedGalgadorian.ingot]
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
static removeRecipes as IIngredient[] = [
	<industrialforegoing:animal_independence_selector>,
	<industrialforegoing:black_hole_controller>,
	<industrialforegoing:conveyor:3>,
	<industrialforegoing:conveyor:8>,
	<industrialforegoing:enchantment_extractor>,
	<industrialforegoing:enchantment_invoker>,
	<industrialforegoing:enchantment_refiner>,
	<industrialforegoing:energy_field_provider>,
	<industrialforegoing:mob_duplicator>,
	<industrialforegoing:petrified_fuel_generator>,
	<industrialforegoing:range_addon:10>,
	<industrialforegoing:range_addon:11>,
	<industrialforegoing:range_addon:9>,
	<industrialforegoing:villager_trade_exchanger>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.industrialforegoing.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.industrialforegoing.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.industrialforegoing.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.industrialforegoing.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.industrialforegoing.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.industrialforegoing.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.industrialforegoing.removeRecipes;

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
