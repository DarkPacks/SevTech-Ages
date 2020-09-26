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
	<twilightforest:uncrafting_table:0> : [
		[
			[<immersiveengineering:stone_decoration:1>, <tconstruct:tooltables:0>,<immersiveengineering:stone_decoration:1>],
			[<immersiveengineering:stone_decoration:1>, <twilightforest:maze_map_focus:0>, <immersiveengineering:stone_decoration:1>],
			[<immersiveengineering:stone_decoration:1>, <tconstruct:tooltables:0>,<immersiveengineering:stone_decoration:1>]
		]
	],
	<twilightforest:fiery_pickaxe:0> : [
		[
			[metals.fiery.plate, metals.fiery.plate, metals.fiery.plate],
			[null, <minecraft:stick:0>, null],
			[null, <minecraft:stick:0>, null]
		]
	],
	<twilightforest:fiery_sword:0> : [
		[
			[metals.fiery.plate],
			[metals.fiery.plate],
			[<minecraft:stick:0>]
		]
	],
	// Converting liveroot to block
	<twilightforest:root:1> : [
		[
			[<twilightforest:liveroot>, <twilightforest:liveroot>, <twilightforest:liveroot>],
			[<twilightforest:liveroot>, <twilightforest:liveroot>, <twilightforest:liveroot>],
			[<twilightforest:liveroot>, <twilightforest:liveroot>, <twilightforest:liveroot>]
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
	<twilightforest:magic_map_focus:0> : [
		[<twilightforest:firefly:0>, <twilightforest:torchberries:0>, <twilightforest:raven_feather:0>]
	],
	// Dye recipes for castle doors
	<twilightforest:castle_door:0>: [
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
	],
	// Liveroot block to liveroot conversion
	<twilightforest:liveroot> * 9 : [
		[<twilightforest:root:1>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<twilightforest:fiery_pickaxe:0>,
	<twilightforest:fiery_sword:0>,
	<twilightforest:magic_map_focus:0>,
	<twilightforest:uncrafting_table:0>
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
