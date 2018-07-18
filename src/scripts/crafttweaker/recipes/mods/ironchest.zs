/*
    SevTech: Ages Iron Chest Recipe Script

    This script handles the recipes for Iron Chest.

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
	<ironchest:iron_chest:3> : [
		[
			[metals.copper.plate, metals.copper.plate, metals.copper.plate],
			[metals.copper.plate, <minecraft:chest>, metals.copper.plate],
			[metals.copper.plate, metals.copper.plate, metals.copper.plate]
		]
	],
	<ironchest:wood_copper_chest_upgrade> : [
		[
			[metals.copper.plate, metals.copper.plate, metals.copper.plate],
			[metals.copper.plate, <ore:logWood>, metals.copper.plate],
			[metals.copper.plate, metals.copper.plate, metals.copper.plate]
		]
	],
	<ironchest:copper_iron_chest_upgrade> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, metals.copper.plate, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<ironchest:copper_silver_chest_upgrade> : [
		[
			[metals.silver.plate, metals.silver.plate, metals.silver.plate],
			[metals.silver.plate, metals.copper.plate, metals.silver.plate],
			[metals.silver.plate, metals.silver.plate, metals.silver.plate]
		]
	],
	<ironchest:iron_chest:1> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, <minecraft:chest>, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<ironchest:iron_chest:4> : [
		[
			[metals.silver.plate, metals.silver.plate, metals.silver.plate],
			[metals.silver.plate, <minecraft:chest>, metals.silver.plate],
			[metals.silver.plate, metals.silver.plate, metals.silver.plate]
		]
	],
	<ironchest:iron_chest> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, <minecraft:chest>, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<ironchest:iron_gold_chest_upgrade> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, metals.iron.plate, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<ironchest:silver_gold_chest_upgrade> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, metals.silver.plate, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<ironchest:wood_iron_chest_upgrade> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, <ore:logWood>, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<ironchest:iron_chest:6> : [
		[
			[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
			[<minecraft:obsidian>, <minecraft:chest>, <minecraft:obsidian>],
			[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]
		]
	],
	<ironchest:iron_chest:2>: [
		[
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>],
			[<mekanism:compresseddiamond>, <minecraft:chest>, <mekanism:compresseddiamond>],
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>]
		]
	],
	<ironchest:iron_chest:5>: [
		[
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
			[<mekanism:compresseddiamond>, <ironchest:iron_chest:1>, <mekanism:compresseddiamond>],
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
		]
	],
	<ironchest:diamond_obsidian_chest_upgrade>: [
		[
			[<mekanism:compressedobsidian>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>],
			[<mekanism:compressedobsidian>, <mekanism:compresseddiamond>, <mekanism:compressedobsidian>],
			[<mekanism:compressedobsidian>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>]
		]
	],
	<ironchest:diamond_crystal_chest_upgrade>: [
		[
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>],
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
		]
	],
	<ironchest:gold_diamond_chest_upgrade>: [
		[
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>],
			[<mekanism:compresseddiamond>, metals.gold.plate, <mekanism:compresseddiamond>],
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>]
		]
	],
	<ironchest:iron_chest:7>: [
		[
			[<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>],
			[<minecraft:dirt>, <minecraft:chest>, <minecraft:dirt>],
			[<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>]
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
	<ironchest:diamond_crystal_chest_upgrade>,
	<ironchest:diamond_obsidian_chest_upgrade>,
	<ironchest:gold_diamond_chest_upgrade>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.ironchest.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.ironchest.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.ironchest.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.ironchest.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.ironchest.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.ironchest.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.ironchest.removeRecipes;

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
