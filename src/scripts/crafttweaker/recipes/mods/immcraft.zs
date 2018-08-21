/*
    SevTech: Ages Immersive Craft Recipe Script

    This script handles the recipes for Immersive Craft.

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
	<immcraft:shelf:0> : [
		[
			[<ore:plankWood>, <immcraft:rock:0>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<immcraft:furnace:0> : [
		[
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>],
			[<minecraft:stone:0>, <primal_tech:stone_grill>, <minecraft:stone:0>],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]
		]
	],
	<immcraft:cupboard:0> : [
 		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <immcraft:rock:0>, <ore:plankWood>]
		]
	],
	<immcraft:chest:0> : [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <immcraft:rock:0>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<immcraft:bookshelf:0> : [
		[
			[<ore:plankWood>, <immcraft:rock:0>, <ore:plankWood>],
			[<ore:plankWood>, <minecraft:book:0>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
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
	<immcraft:bookshelf:0>,
	<immcraft:chest:0>,
	<immcraft:cupboard:0>,
	<immcraft:furnace:0>,
	<immcraft:shelf:0>
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
