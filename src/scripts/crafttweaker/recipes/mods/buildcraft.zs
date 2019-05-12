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
	<buildcraftcore:engine:0> : [
		[
			[<minecraft:glass:0>, <minecraft:sticky_piston:0>, <minecraft:glass:0>],
			[metals.redstoneAlloy.gear, <immersiveengineering:material:27>, metals.redstoneAlloy.gear],
			[<immersiveengineering:treated_wood:0>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:treated_wood:0>]
		]
	],
	<buildcrafttransport:pipe_void_item:0> * 8 : [
		[
			[<ore:dyeBlack>, <ore:blockGlass>, <minecraft:redstone:0>]
		]
	],
	<buildcrafttransport:pipe_void_item:0> * 1 : [
		[
			[<buildcrafttransport:pipe_void_fluid:0>]
		]
	],
	<buildcraftcore:engine:0> : [
		[
			[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
			[<ore:blockGlass>, metals.steel.gear, <ore:blockGlass>],
			[<minecraft:redstone:0>, <minecraft:piston:0>, <minecraft:redstone:0>]
		]
	],
	<buildcrafttransport:filtered_buffer:0> : [
		[
			[<ore:plankWood>, <buildcrafttransport:pipe_stripes_item:0>, <ore:plankWood>],
			[<ore:plankWood>, <minecraft:chest:0>, <ore:plankWood>],
			[<ore:plankWood>, <minecraft:piston:0>, <ore:plankWood>]
		]
	],
	<buildcraftbuilders:quarry:0> : [
		[
			[metals.platinum.gear, <stevescarts:cartmodule:9>, metals.platinum.gear],
			[metals.gold.gear, <teslacorelib:machine_case:0>, metals.gold.gear],
			[metals.iron.gear, <modularmachinery:blockcontroller:0>, metals.iron.gear]
		]
	],
	<buildcraftcore:marker_path:0> : [
		[
			[<ore:dyeGreen>],
			[<minecraft:redstone_torch:0>]
		]
	],
	<buildcraftcore:marker_volume:0> : [
		[
			[<ore:dyeBlue>],
			[<minecraft:redstone_torch:0>]
		]
	],
	<buildcraftcore:list:0> : [
		[
			[<minecraft:paper:0>, <minecraft:redstone:0>, <minecraft:paper:0>],
			[<minecraft:paper:0>, <ore:dyeGreen>, <minecraft:paper:0>],
			[<minecraft:paper:0>, <minecraft:paper:0>, <minecraft:paper:0>]
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
	<buildcraftsilicon:plug_pulsar:0> : [
		[<buildcraftcore:engine:0>, metals.iron.ingot.firstItem]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<buildcraftbuilders:quarry:0>,
	<buildcraftcore:engine:0>,
	<buildcraftcore:list:0>,
	<buildcraftcore:marker_path:0>,
	<buildcraftcore:marker_volume:0>,
	<buildcrafttransport:filtered_buffer:0>,
	<buildcrafttransport:pipe_void_item:0>
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
}
