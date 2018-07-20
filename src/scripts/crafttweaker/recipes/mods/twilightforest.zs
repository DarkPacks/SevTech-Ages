/*
    SevTech: Ages Twilight Forest Recipe Script

    This script handles the recipes for Twilight Forest.

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
	<twilightforest:uncrafting_table> : [
		[
			[<immersiveengineering:stone_decoration:1>, <tconstruct:tooltables>,<immersiveengineering:stone_decoration:1>],
			[<immersiveengineering:stone_decoration:1>, <twilightforest:maze_map_focus>, <immersiveengineering:stone_decoration:1>],
			[<immersiveengineering:stone_decoration:1>, <tconstruct:tooltables>,<immersiveengineering:stone_decoration:1>]
		]
	],
	<twilightforest:fiery_pickaxe> : [
		[
			[metals.fiery.plate, metals.fiery.plate, metals.fiery.plate],
			[null, <minecraft:stick>, null],
			[null, <minecraft:stick>, null]
		]
	],
	<twilightforest:fiery_sword> : [
		[
			[null, metals.fiery.plate, null],
			[null, metals.fiery.plate, null],
			[null, <minecraft:stick>, null]
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
	<twilightforest:magic_map_focus> : [
		[<twilightforest:firefly>, <twilightforest:torchberries>, <twilightforest:raven_feather>]
	],
	// Dye recipes for castle doors
	<twilightforest:castle_door>: [
		[<twilightforest:castle_door:*>, <ore:dyeYellow>]
	],
	<twilightforest:castle_door:1>: [
		[<twilightforest:castle_door:*>, <ore:dyePurple>]
	],
	<twilightforest:castle_door:2>: [
		[<twilightforest:castle_door:*>, <ore:dyePink>]
	],
	<twilightforest:castle_door:3>: [
		[<twilightforest:castle_door:*>, <ore:dyeLightBlue>]
	],
	// Re-add recipe for fiery since removed in metals script
	metals.fiery.ingot.firstItem : [
		[<ore:bottleFiery>, metals.iron.ingot]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<twilightforest:fiery_pickaxe>,
	<twilightforest:fiery_sword>,
	<twilightforest:magic_map_focus>,
	<twilightforest:uncrafting_table>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.twilightforest.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.twilightforest.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.twilightforest.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.twilightforest.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.twilightforest.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.twilightforest.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.twilightforest.removeRecipes;

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
