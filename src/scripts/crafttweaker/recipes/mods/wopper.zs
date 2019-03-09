/*
    SevTech: Ages Wopper Recipe Script

    This script handles the recipes for Wopper.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.stages.stageOne;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<wopper:wopper:0> : [
		[
			[<ore:plankWood>, null, <ore:plankWood>],
			[<ore:plankWood>, <immcraft:chest:0>, <ore:plankWood>],
			[null, <ore:plankWood>, null]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<wopper:wopper:0> : {
		Utils.genRecipeName(stageOne, "cheaper_whopper") : [
			[
				[<ore:plankWood>, null, <ore:plankWood>],
				[<ore:plankWood>, <minecraft:chest:0>, <ore:plankWood>],
				[null, <ore:plankWood>, null]
			]
		]
	}
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
	<wopper:wopper:0>
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
