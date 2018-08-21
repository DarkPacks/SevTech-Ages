/*
    SevTech: Ages Primal Chests Recipe Script

    This script handles the recipes for Primal Chests.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<primalchests:primal_chest:0>: [
		[
			[<abyssalcraft:dltplank:0>, <ore:plankWood>, <abyssalcraft:dltplank:0>],
			[<ore:plankWood>, <immcraft:chest:0>, <ore:plankWood>],
			[<abyssalcraft:dltplank:0>, <ore:plankWood>, <abyssalcraft:dltplank:0>]
		]
	],
	<primalchests:primal_chest_advanced:0>: [
		[
			[null, <ore:barkWood>, null],
			[<ore:barkWood>, <primalchests:primal_chest:0>, <ore:barkWood>],
			[null, <ore:barkWood>, null]
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
static removeRecipes as IItemStack[] = [];

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
