/*
    SevTech: Ages Astikoor Recipe Script

    This script handles the recipes for Astikoor.

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
	<astikoor:cargocart> : [
		[
			[<ore:plankWood>, null, <ore:plankWood>],
			[<primalchests:primal_chest_advanced>, <ore:plankWood>, <primalchests:primal_chest_advanced>],
			[<astikoor:wheel>, <ore:slabWood>, <astikoor:wheel>]
		]
	],
	<astikoor:wheel> : [
		[
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <ore:plankWood>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem]
		]
	],
	<astikoor:plowcart> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<astikoor:wheel>, <astikoor:wheel>, <minecraft:stone>]
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
static removeRecipes as IIngredient[] = [];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.astikoor.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.astikoor.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.astikoor.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.astikoor.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.astikoor.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.astikoor.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.astikoor.removeRecipes;

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
