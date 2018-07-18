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
	<car:sign_post>: [
		[
			[null, metals.iron.rod, null],
			[null, metals.iron.rod, null]
		]
	],
	<car:screw_driver>: [
		[
			[null, metals.iron.rod, null],
			[null, metals.iron.rod, null],
			[null, metals.iron.ingot, null]
		]
	],
	<car:hammer>: [
		[
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[null, metals.iron.rod, null],
			[null, metals.iron.rod, null]
		]
	],
	<car:sign> * 3: [
		[
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[null, metals.iron.rod, null]
		]
	],
	<car:engine_piston>: [
		[
			[null, null, metals.iron.ingot],
			[null, metals.iron.rod, null],
			[metals.iron.rod, null, null]
		]
	],
	<car:wrench>: [
		[
			[null, metals.iron.ingot, null],
			[null, metals.iron.rod, metals.iron.ingot],
			[metals.iron.rod, null, null]
		]
	],
	<car:axle>: [
		[
			[null, null, null],
			[<car:wheel>, metals.iron.rod, <car:wheel>],
			[null, null, null]
		]
	],
	<car:battery>: [
		[
			[metals.iron.rod, null, metals.iron.rod],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot]
		]
	],
	<car:number_plate>: [
		[
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.rod, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot]
		]
	],
	<car:painter_yellow>: [
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
static removeRecipes as IIngredient[] = [
	<car:axle>,
	<car:battery>,
	<car:engine_piston>,
	<car:hammer>,
	<car:number_plate>,
	<car:painter_yellow>,
	<car:screw_driver>,
	<car:sign>,
	<car:sign_post>,
	<car:wrench>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.car.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.car.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.car.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.car.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.car.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.car.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.car.removeRecipes;

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
