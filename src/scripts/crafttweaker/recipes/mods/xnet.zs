/*
    SevTech: Ages XNet Recipe Script

    This script handles the recipes for XNet.

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
	<xnet:controller:0>: [
		[
			[metals.nickel.plate, <mekanism:transmitter:0>, metals.nickel.plate],
			[metals.redstoneAlloy.plate, <teslacorelib:machine_case:0>, metals.redstoneAlloy.plate],
			[metals.nickel.plate, <galacticraftplanets:item_basic_mars:5>, metals.nickel.plate]
		]
	],
	<xnet:router:0>: [
		[
			[metals.aluminum.plate, <xnet:netcable:0>, metals.aluminum.plate],
			[<xnet:netcable:0>, <rftools:machine_frame:0>, <xnet:netcable:0>],
			[metals.aluminum.plate, <xnet:netcable:0>, metals.aluminum.plate]
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
	<xnet:controller:0>,
	<xnet:router:0>
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
