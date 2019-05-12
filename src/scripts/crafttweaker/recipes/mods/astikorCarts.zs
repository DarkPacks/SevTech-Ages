/*
    SevTech: Ages AstikorCarts Recipe Script

    This script handles the recipes for AstikorCarts.

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
	<astikorcarts:cargocart:0> : [
		[
			[<ore:plankWood>, null, <ore:plankWood>],
			[<primalchests:primal_chest_advanced:0>, <ore:plankWood>, <primalchests:primal_chest_advanced:0>],
			[<astikorcarts:wheel:0>, <ore:slabWood>, <astikorcarts:wheel:0>]
		]
	],
	<astikorcarts:wheel:0> : [
		[
			[null, <ore:stickWood>.firstItem, null],
			[<ore:stickWood>.firstItem, <ore:plankWood>, <ore:stickWood>.firstItem],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<astikorcarts:mobcart:0>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<primalchests:primal_chest_advanced:0>, <ore:plankWood>, <primalchests:primal_chest_advanced:0>],
			[<astikorcarts:wheel:0>, <ore:slabWood>, <astikorcarts:wheel:0>]
		]
	],
	<astikorcarts:plowcart:0> : [
		[
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<astikorcarts:wheel:0>, <astikorcarts:wheel:0>, <minecraft:stone:0>]
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
	<astikorcarts:cargocart:0>,
	<astikorcarts:mobcart:0>,
	<astikorcarts:plowcart:0>,
	<astikorcarts:wheel:0>
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
