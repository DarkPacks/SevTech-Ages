/*
    SevTech: Ages BuildCraft Recipe Script

    This script handles the recipes for BuildCraft.

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
	<buildcraftcore:engine> : [
		[
			[<minecraft:glass>, <minecraft:sticky_piston>, <minecraft:glass>],
			[metals.redstoneAlloy.gear, <immersiveengineering:material:27>, metals.redstoneAlloy.gear],
			[<immersiveengineering:treated_wood>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:treated_wood>]
		]
	],
	<buildcrafttransport:pipe_void_item> * 8 : [
		[
			[null, null, null],
			[<ore:dyeBlack>, <ore:blockGlass>, <minecraft:redstone>],
			[null, null, null]
		]
	],
	<buildcrafttransport:pipe_void_item> * 1 : [
		[
			[null, null, null],
			[null, <buildcrafttransport:pipe_void_fluid>, null],
			[null, null, null]
		]
	],
	<buildcraftcore:engine> : [
		[
			[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
			[<ore:blockGlass>, metals.steel.gear, <ore:blockGlass>],
			[<minecraft:redstone>, <minecraft:piston>, <minecraft:redstone>]
		]
	],
	<buildcrafttransport:filtered_buffer> : [
		[
			[<ore:plankWood>, <buildcrafttransport:pipe_stripes_item>, <ore:plankWood>],
			[<ore:plankWood>, <minecraft:chest>, <ore:plankWood>],
			[<ore:plankWood>, <minecraft:piston>, <ore:plankWood>]
		]
	],
	<buildcraftbuilders:quarry> : [
		[
			[metals.platinum.gear, <stevescarts:cartmodule:9>, metals.platinum.gear],
			[metals.gold.gear, <teslacorelib:machine_case>, metals.gold.gear],
			[metals.iron.gear, <modularmachinery:blockcontroller>, metals.iron.gear]
		]
	],
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
	<buildcraftsilicon:plug_pulsar> : [
		[<buildcraftcore:engine>, metals.iron.ingot.firstItem]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<buildcraftcore:engine>,
	<buildcrafttransport:pipe_void_item>,
	<buildcraftbuilders:quarry>,
	<buildcrafttransport:filtered_buffer>,
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.buildcraft.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.buildcraft.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.buildcraft.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.buildcraft.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.buildcraft.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.buildcraft.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.buildcraft.removeRecipes;

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
