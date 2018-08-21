/*
    SevTech: Ages Traverse Recipe Script

    This script handles the recipes for Traverse.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.betterwithmods.MiniBlocks;
import mods.zenstages.Utils;

import scripts.crafttweaker.craftingUtils;
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
	<traverse:blue_rock_cobblestone_slab:0> * 3 : [
		[
			[<traverse:blue_rock_cobblestone:0>, <traverse:blue_rock_cobblestone:0>, <traverse:blue_rock_cobblestone:0>]
		]
	],
	<traverse:blue_rock_slab:0> * 3 : [
	  	[
			[<traverse:blue_rock:0>, <traverse:blue_rock:0>, <traverse:blue_rock:0>]
		]
	],
	<traverse:fir_slab:0> * 3 : [
		[
			[<traverse:fir_planks:0>, <traverse:fir_planks:0>, <traverse:fir_planks:0>]
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
static removeRecipes as IItemStack[] = [
	<traverse:blue_rock_cobblestone_slab:0>,
	<traverse:blue_rock_slab:0>,
	<traverse:fir_slab:0>
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
