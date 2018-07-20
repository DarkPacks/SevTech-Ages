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
			[null, <tcomplement:manyullyn_helmet>, null],
			[<modularrouters:module:7>, <minecraft:skull:*>, <modularrouters:module:9>],
			[null, <tcomplement:manyullyn_chestplate>, null]
		]
	],
	<modularrouters:filter> : [
		[
			[metals.iron.plate, <ore:blockGlass>, metals.iron.plate],
			[<modularrouters:blank_module>, metals.platinum.plate, <modularrouters:blank_module>],
			[metals.iron.plate, <ore:blockGlass>, metals.iron.plate]
		]
	],
	<modularrouters:augment_core> * 4: [
		[
			[<modularrouters:blank_module>, <modularrouters:blank_upgrade>, null],
			[null, null, null],
			[null, null, null]
		]
	],
	<modularrouters:blank_upgrade> * 4: [
		[
			[<minecraft:paper>, <minecraft:paper>, metals.gold.plate],
			[<minecraft:paper>, <minecraft:dye:4>, metals.gold.plate],
			[null, <minecraft:paper>, metals.gold.plate]
		]
	],
	<modularrouters:blank_module> * 6: [
		[
			[null, <minecraft:paper>, null],
			[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<modularrouters:item_router> * 4: [
		[
			[metals.iron.plate, <minecraft:iron_bars>, metals.iron.plate],
			[<minecraft:iron_bars>, <minecraft:paper>, <minecraft:iron_bars>],
			[metals.iron.plate, <minecraft:iron_bars>, metals.iron.plate]
		]
	],
	<modularrouters:upgrade:4> * 8: [
		[
			[null, null, null],
			[metals.redstoneAlloy.plate, <minecraft:clock>, metals.redstoneAlloy.plate],
			[metals.redstoneAlloy.plate, <modularrouters:blank_upgrade>, metals.redstoneAlloy.plate]
		]
	],
	<modularrouters:upgrade:5> * 8: [
		[
			[null, null, null],
			[null, <minecraft:bucket>, null],
			[<ore:blockGlass>, <modularrouters:blank_upgrade>, <ore:blockGlass>]
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
static removeRecipes as IIngredient[] = [
	<modularrouters:augment_core>,
	<modularrouters:blank_module>,
	<modularrouters:blank_upgrade>,
	<modularrouters:filter>,
	<modularrouters:item_router>,
	<modularrouters:module:13>,
	<modularrouters:upgrade:4>,
	<modularrouters:upgrade:5>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.modularrouters.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.modularrouters.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.modularrouters.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.modularrouters.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.modularrouters.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.modularrouters.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.modularrouters.removeRecipes;

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
