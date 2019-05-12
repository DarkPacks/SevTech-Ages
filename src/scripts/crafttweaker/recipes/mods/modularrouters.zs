/*
    SevTech: Ages Modular Routers Recipe Script

    This script handles the recipes for Modular Routers.

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
	<modularrouters:module:13> : [
		[
			[null, <tcomplement:manyullyn_helmet:0>, null],
			[<modularrouters:module:7>, <minecraft:skull:*>, <modularrouters:module:9>],
			[null, <tcomplement:manyullyn_chestplate:0>, null]
		]
	],
	<modularrouters:filter:0> : [
		[
			[metals.iron.plate, <ore:blockGlass>, metals.iron.plate],
			[<modularrouters:blank_module:0>, metals.platinum.plate, <modularrouters:blank_module:0>],
			[metals.iron.plate, <ore:blockGlass>, metals.iron.plate]
		]
	],
	<modularrouters:augment_core:0> * 4: [
		[
			[<modularrouters:blank_module:0>, <modularrouters:blank_upgrade:0>]
		]
	],
	<modularrouters:blank_upgrade:0> * 4: [
		[
			[<minecraft:paper:0>, <minecraft:paper:0>, metals.gold.plate],
			[<minecraft:paper:0>, <minecraft:dye:4>, metals.gold.plate],
			[null, <minecraft:paper:0>, metals.gold.plate]
		]
	],
	<modularrouters:blank_module:0> * 6: [
		[
			[null, <minecraft:paper:0>, null],
			[<minecraft:paper:0>, <minecraft:paper:0>, <minecraft:paper:0>],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<modularrouters:item_router:0> * 4: [
		[
			[metals.iron.plate, <minecraft:iron_bars:0>, metals.iron.plate],
			[<minecraft:iron_bars:0>, <minecraft:paper:0>, <minecraft:iron_bars:0>],
			[metals.iron.plate, <minecraft:iron_bars:0>, metals.iron.plate]
		]
	],
	<modularrouters:upgrade:4> * 8: [
		[
			[metals.redstoneAlloy.plate, <minecraft:clock:0>, metals.redstoneAlloy.plate],
			[metals.redstoneAlloy.plate, <modularrouters:blank_upgrade:0>, metals.redstoneAlloy.plate]
		]
	],
	<modularrouters:upgrade:5> * 8: [
		[
			[null, <minecraft:bucket:0>, null],
			[<ore:blockGlass>, <modularrouters:blank_upgrade:0>, <ore:blockGlass>]
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
	<modularrouters:augment_core:0>,
	<modularrouters:blank_module:0>,
	<modularrouters:blank_upgrade:0>,
	<modularrouters:filter:0>,
	<modularrouters:item_router:0>,
	<modularrouters:module:13>,
	<modularrouters:upgrade:4>,
	<modularrouters:upgrade:5>
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
