/*
    SevTech: Ages Iron Jetpacks Recipe Script

    This script handles the recipes for Iron Jetpacks.

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
	<ironjetpacks:electrum_capacitor>: [
		[
			[<galacticraftcore:basic_item:9>, <ironjetpacks:electrum_cell>, <galacticraftcore:basic_item:9>],
			[metals.electrum.plate, <ironjetpacks:electrum_cell>, metals.electrum.plate],
			[<mekanism:compressedobsidian>, metals.compressedIron.gear, <mekanism:compressedobsidian>]
		]
	],
	<ironjetpacks:basic_coil>: [
		[
			[null, <immersiveengineering:wirecoil:1>, metals.redstoneAlloy.rod],
			[<immersiveengineering:wirecoil:5>, metals.redstoneAlloy.rod, <immersiveengineering:wirecoil:5>],
			[metals.redstoneAlloy.rod, <immersiveengineering:wirecoil:1>, null]
		]
	],
	<ironjetpacks:advanced_coil>: [
		[
			[null, <immersiveengineering:wirecoil:4>, metals.galgadorian.rod],
			[<immersiveengineering:wirecoil:5>, metals.galgadorian.rod, <immersiveengineering:wirecoil:5>],
			[metals.galgadorian.rod, <immersiveengineering:wirecoil:4>, null]
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
	<ironjetpacks:advanced_coil>,
	<ironjetpacks:basic_coil>,
	<ironjetpacks:electrum_capacitor>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.ironjetpacks.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.ironjetpacks.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.ironjetpacks.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.ironjetpacks.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.ironjetpacks.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.ironjetpacks.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.ironjetpacks.removeRecipes;

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
