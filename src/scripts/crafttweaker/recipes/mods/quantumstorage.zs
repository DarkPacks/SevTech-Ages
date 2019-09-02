/*
    SevTech: Ages Quantum Storage Recipe Script

    This script handles the recipes for Quantum Storage.

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
	<quantumstorage:quantum_bag:0>: [
		[
			[<ore:wool>, <betterwithmods:rope:0>, <ore:wool>],
			[<ore:wool>, <ironchest:iron_chest:2>, <ore:wool>],
			[<ore:wool>, <ore:wool>, <ore:wool>]
		]
	],
	<quantumstorage:quantum_storage_unit:0>: [
		[
			[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>],
			[metals.iron.ingot, <ironchest:iron_chest:2>, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot]
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
	<quantumstorage:quantum_storage_unit:0>
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


	// We have to remove this one manually cos it uses ForgeOreShapless Children for the dye recipes.
	recipes.removeShaped(<quantumstorage:quantum_bag:0>, [
		[<ore:wool>, <minecraft:string:0>, <ore:wool>],
		[<ore:wool>, <quantumstorage:chest_diamond:0>, <ore:wool>],
		[<ore:wool>, <ore:wool>, <ore:wool>]
	]);
}
