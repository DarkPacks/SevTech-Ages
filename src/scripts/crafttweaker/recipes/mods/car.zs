/*
    SevTech: Ages Car Recipe Script

    This script handles the recipes for Car.

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
	<car:sign_post:0>: [
		[
			[metals.iron.rod],
			[metals.iron.rod]
		]
	],
	<car:screw_driver:0>: [
		[
			[metals.iron.rod],
			[metals.iron.rod],
			[metals.iron.ingot]
		]
	],
	<car:hammer:0>: [
		[
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[null, metals.iron.rod, null],
			[null, metals.iron.rod, null]
		]
	],
	<car:sign:0> * 3: [
		[
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[null, metals.iron.rod, null]
		]
	],
	<car:engine_piston:0>: [
		[
			[null, null, metals.iron.ingot],
			[null, metals.iron.rod, null],
			[metals.iron.rod, null, null]
		]
	],
	<car:wrench:0>: [
		[
			[null, metals.iron.ingot, null],
			[null, metals.iron.rod, metals.iron.ingot],
			[metals.iron.rod, null, null]
		]
	],
	<car:axle:0>: [
		[
			[<car:wheel:0>, metals.iron.rod, <car:wheel:0>]
		]
	],
	<car:battery:0>: [
		[
			[metals.iron.rod, null, metals.iron.rod],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot]
		]
	],
	<car:number_plate:0>: [
		[
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.rod, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot]
		]
	],
	<car:painter_yellow:0>: [
		[
			[null, <ore:dyeYellow>, null],
			[null, <ore:stickWood>, <ore:dyeYellow>],
			[<ore:stickWood>, null, null]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<car:axle:0>,
	<car:battery:0>,
	<car:engine_piston:0>,
	<car:hammer:0>,
	<car:number_plate:0>,
	<car:painter_yellow:0>,
	<car:screw_driver:0>,
	<car:sign:0>,
	<car:sign_post:0>,
	<car:wrench:0>
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
