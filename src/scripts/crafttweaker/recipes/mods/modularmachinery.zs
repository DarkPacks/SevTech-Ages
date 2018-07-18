/*
    SevTech: Ages Modular Machinery Recipe Script

    This script handles the recipes for Modular Machinery.

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
	<modularmachinery:blockcontroller> : [
		[
			[metals.modularium.plate, <immersiveengineering:wirecoil>, metals.modularium.plate],
			[metals.redstoneAlloy.gear, <modularmachinery:blockcasing>, metals.redstoneAlloy.gear],
			[metals.modularium.plate, <immersiveengineering:material:27>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing>*2 : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[metals.modularium.plate, null, metals.modularium.plate],
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing:1>*2 : [
		[
			[metals.modularium.plate, <minecraft:iron_bars>, metals.modularium.plate],
			[<minecraft:iron_bars>, null, <minecraft:iron_bars>],
			[metals.modularium.plate, <minecraft:iron_bars>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockoutputbus:1> : [
		[
			[metals.modularium.plate, <uppers:upper>, metals.modularium.plate],
			[null, <modularmachinery:blockcasing>, null],
			[metals.modularium.plate, null, metals.modularium.plate]
		]
	],
	<modularmachinery:blockinputbus:1> : [
		[
			[metals.modularium.plate, <minecraft:hopper>, metals.modularium.plate],
			[null, <modularmachinery:blockcasing>, null],
			[metals.modularium.plate, null, metals.modularium.plate]
		]
	],
	<modularmachinery:blockfluidinputhatch> : [
		[
			[metals.modularium.plate, <minecraft:hopper>, metals.modularium.plate],
			[null, <immersiveengineering:metal_device0:4>, null],
			[metals.modularium.plate, <immersiveengineering:metal_device0:4>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockenergyinputhatch> : [
		[
			[metals.modularium.plate, <immersiveengineering:wirecoil>, metals.modularium.plate],
			[<immersiveengineering:wirecoil>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:wirecoil>],
			[metals.modularium.plate, <immersiveengineering:wirecoil>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing:3> * 1 : [
		[
			[null, metals.copper.gear, null],
			[metals.copper.gear, <modularmachinery:blockcasing>, metals.copper.gear],
			[null, metals.copper.gear, null]
		]
	],
	<modularmachinery:blockcasing:3> * 4 : [
		[
			[null, metals.steel.gear, null],
			[metals.steel.gear, <modularmachinery:blockcasing>, metals.steel.gear],
			[null, metals.steel.gear, null]
		]
	],
	<modularmachinery:blockcasing:5> * 2 : [
		[
			[null, <immersiveengineering:material:27>, null],
			[<immersiveengineering:wirecoil:5>, <modularmachinery:blockcasing>, <immersiveengineering:wirecoil:5>],
			[null, <immersiveengineering:wirecoil:5>, null]
		]
	],
	<modularmachinery:blockcasing:3> * 8 : [
		[
			[null, metals.cobalt.gear, null],
			[metals.cobalt.gear, <modularmachinery:blockcasing>, metals.cobalt.gear],
			[null, metals.cobalt.gear, null]
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
	<modularmachinery:blockcasing:1>,
	<modularmachinery:blockcasing>,
	<modularmachinery:blockcontroller>,
	<modularmachinery:blockenergyinputhatch>,
	<modularmachinery:blockfluidinputhatch>,
	<modularmachinery:blockinputbus:1>,
	<modularmachinery:blockoutputbus:1>,
	<modularmachinery:itemmodularium>,
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.modularmachinery.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.modularmachinery.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.modularmachinery.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.modularmachinery.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.modularmachinery.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.modularmachinery.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.modularmachinery.removeRecipes;

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
