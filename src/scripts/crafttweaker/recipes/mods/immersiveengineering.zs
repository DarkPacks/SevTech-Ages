/*
    SevTech: Ages Immersive Engineering Recipe Script

    This script handles the recipes for Immersive Engineering.

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
	<immersiveengineering:tool> : [
		[
			[null, metals.copper.ingot, <minecraft:string>],
			[null, <ore:stickWood>.firstItem, metals.copper.ingot],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<immersiveengineering:metal_decoration0:3> : [
		[
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate],
			[metals.redstoneAlloy.plate, <immersiveengineering:material:26>, metals.redstoneAlloy.plate],
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate]
		]
	],
	<immersiveengineering:tool:1> : [
		[
			[<ore:stickTreatedWood>, <tconstruct:knife_blade>.withTag({Material: "iron"})],
			[null, <ore:stickTreatedWood>]
		]
	],
	<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}) : [
		[
			[null, <immersiveengineering:material:18>, null],
			[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
			[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
		]
	],
	<immersiveengineering:stone_decoration:1> * 3 : [
		[
			[<minecraft:netherbrick>, <minecraft:brick>, <minecraft:netherbrick>],
			[<minecraft:brick>, <minecraft:blaze_powder>, <minecraft:brick>],
			[<minecraft:netherbrick>, <minecraft:brick>, <minecraft:netherbrick>]
		]
	],
	<immersiveengineering:stone_decoration:1> : [
		[
			[null, <immersiveengineering:stone_decoration_slab:1>, null],
			[null, <immersiveengineering:stone_decoration_slab:1>, null],
			[null, null, null]
		]
	],
	<immersiveengineering:metal_device0:5> : [
		[
			[<industrialforegoing:plastic>, <immersiveengineering:material:9>, <industrialforegoing:plastic>],
			[metals.steel.plate, <immersiveengineering:material:9>, metals.steel.plate],
			[<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>]
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
	<immersiveengineering:material:20> : [
		[<immersiveengineering:tool:1>, metals.copper.plate]
	],
	<immersiveengineering:material:21> : [
		[<immersiveengineering:tool:1>, metals.electrum.plate]
	],
	<immersiveengineering:material:22> : [
		[<immersiveengineering:tool:1>, metals.aluminum.plate]
	],
	<immersiveengineering:material:23> : [
		[<immersiveengineering:tool:1>, metals.steel.plate]
	],
	<immersiveengineering:metal_device0:0>: [
		[<immersiveengineering:metal_device0:0>]
	],
	<immersiveengineering:metal_device0:1>: [
		[<immersiveengineering:metal_device0:1>]
	],
	<immersiveengineering:metal_device0:2>: [
		[<immersiveengineering:metal_device0:2>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<immersiveengineering:axe_steel>,
	<immersiveengineering:material:20>,
	<immersiveengineering:material:21>,
	<immersiveengineering:material:22>,
	<immersiveengineering:material:23>,
	<immersiveengineering:metal_decoration0:3>,
	<immersiveengineering:metal_device0:5>,
	<immersiveengineering:pickaxe_steel>,
	<immersiveengineering:shovel_steel>,
	<immersiveengineering:stone_decoration:1>,
	<immersiveengineering:sword_steel>,
	<immersiveengineering:tool:1>,
	<immersiveengineering:tool>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.immersiveengineering.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.immersiveengineering.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.immersiveengineering.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.immersiveengineering.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.immersiveengineering.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.immersiveengineering.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.immersiveengineering.removeRecipes;

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