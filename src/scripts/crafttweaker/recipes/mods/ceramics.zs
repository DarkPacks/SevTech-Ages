/*
    SevTech: Ages Ceramics Recipe Script

    This script handles the recipes for Ceramics.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {};

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
	Furnace Recipes
*/
static furnaceRecipes as IIngredient[][IItemStack] = {
	<ceramics:clay_bucket:0>: [<ceramics:clay_bucket_block:0>]
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<ceramics:unfired_clay:4>,
	<ceramics:unfired_clay:0>
];

static removeFurnace as IIngredient[] = [
	<ceramics:clay_barrel:1>,
	<ceramics:clay_barrel:0>,
	<ceramics:clay_bucket:0>
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

	recipeUtil.processFurnace(furnaceRecipes);

	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeFurnace(removeFurnace);
}
