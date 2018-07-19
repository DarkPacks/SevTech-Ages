/*
    SevTech: Ages Pickle Tweaks Recipe Script

    This script handles the recipes for Pickle Tweaks.

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
	// Bronze Tools
	<pickletweaks:bronze_sword> : [
		[
			[null, metals.bronze.plate, null],
			[null, metals.bronze.plate, null],
			[null, <minecraft:stick>, null]
		]
	],
	<pickletweaks:bronze_pickaxe> : [
		[
			[metals.bronze.plate, metals.bronze.plate, metals.bronze.plate],
			[null, <minecraft:stick>, null],
			[null, <minecraft:stick>, null]
		]
	],
	<pickletweaks:bronze_shovel> : [
		[
			[null, metals.bronze.plate, null],
			[null, <minecraft:stick>, null],
			[null, <minecraft:stick>, null]
		]
	],
	<pickletweaks:bronze_axe> : [
		[
			[metals.bronze.plate, metals.bronze.plate, null],
			[metals.bronze.plate, <minecraft:stick>, null],
			[null, <minecraft:stick>, null]
		]
	],
	<pickletweaks:bronze_hoe> : [
		[
			[metals.bronze.plate, metals.bronze.plate, null],
			[null, <minecraft:stick>, null],
			[null, <minecraft:stick>, null]
		]
	],
	// Copper Tools
	<pickletweaks:copper_sword> : [
		[
			[null, metals.copper.plate, null],
			[null, metals.copper.plate, null],
			[null, <minecraft:stick>, null]
		]
	],
	<pickletweaks:copper_pickaxe> : [
		[
			[metals.copper.plate, metals.copper.plate, metals.copper.plate],
			[null, <minecraft:stick>, null],
			[null, <minecraft:stick>, null]
		]
	],
	<pickletweaks:copper_shovel> : [
		[
			[null, metals.copper.plate, null],
			[null, <minecraft:stick>, null],
			[null, <minecraft:stick>, null]
		]
	],
	<pickletweaks:copper_axe> : [
		[
			[metals.copper.plate, metals.copper.plate, null],
			[metals.copper.plate, <minecraft:stick>, null],
			[null, <minecraft:stick>, null]
		]
	],
	<pickletweaks:copper_hoe> : [
		[
			[metals.copper.plate, metals.copper.plate, null],
			[null, <minecraft:stick>, null],
			[null, <minecraft:stick>, null]
		]
	],
	<pickletweaks:watering_can> : [
		[
			[metals.iron.plate, <actuallyadditions:item_fertilizer>, null],
			[metals.iron.plate, <minecraft:bucket>, metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
	<pickletweaks:grass_mesh>: [
		[
			[<minecraft:stick>, <primal:plant_cordage>],
			[<primal:plant_cordage>, <minecraft:stick>]
		]
	]
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<pickletweaks:coal_piece> * 8: [
		[<minecraft:coal>]
	],
	<pickletweaks:coal_piece:1> * 8: [
		[<minecraft:coal:1>]
	],

	// ==================================
	// Dye Unification
	<pickletweaks:dye_powder:1> * 2 : [
		[<pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:4>]
	],
	<pickletweaks:dye_powder:2> * 2 : [
		[<pickletweaks:dye_powder:6>, <pickletweaks:dye_powder:10>]
	],
	<pickletweaks:dye_powder:2> * 3 : [
		[<pickletweaks:dye_powder:6>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:11>]
	],
	<pickletweaks:dye_powder:2> * 4 : [
		[<pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:11>]
	],
	<pickletweaks:dye_powder:3> * 2 : [
		[<pickletweaks:dye_powder:11>, <pickletweaks:dye_powder:0>]
	],
	<pickletweaks:dye_powder:5> * 2 : [
		[<pickletweaks:dye_powder:13>, <pickletweaks:dye_powder:0>]
	],
	<pickletweaks:dye_powder:6> * 2 : [
		[<pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:0>]
	],
	<pickletweaks:dye_powder:7> * 2 : [
		[<pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:15>]
	],
	<pickletweaks:dye_powder:8> * 3 : [
		[<pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:15>]
	],
	<pickletweaks:dye_powder:9> * 2 : [
		[<pickletweaks:dye_powder:13>, <pickletweaks:dye_powder:11>]
	],
	<pickletweaks:dye_powder:10> * 2 : [
		[<pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:11>]
	],
	<pickletweaks:dye_powder:12> * 2 : [
		[<pickletweaks:dye_powder:15>, <pickletweaks:dye_powder:1>]
	],
	<pickletweaks:dye_powder:12> * 3 : [
		[<pickletweaks:dye_powder:15>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:4>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<pickletweaks:dye_powder:*>,
	<pickletweaks:grass_mesh>,
	<pickletweaks:mesh>,
	<pickletweaks:watering_can>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.pickletweaks.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.pickletweaks.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.pickletweaks.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.pickletweaks.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.pickletweaks.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.pickletweaks.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.pickletweaks.removeRecipes;

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
