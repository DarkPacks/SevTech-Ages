/*
    SevTech: Ages DarkUtils Recipe Script

    This script handles the recipes for DarkUtils.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.crafttweaker.utils;

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
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [];

static removeRegex as string[] = [
	"darkutils:dyed_slime_block_.*"
];

function initSlimeBlockRecipes() {
	for i in 0 to 16 {
		var slimeBlock as IItemStack = <darkutils:slime_dyed>.definition.makeStack(i);
		var dye as IItemStack = <minecraft:dye>.definition.makeStack(15 - i);
		var dyeOredict as IOreDictEntry = oreDict.get("dye" ~ utils.capitalize(minecraftDyeIdTable[15 - i]));
		recipes.addShaped(slimeBlock, [
			[<ore:blockSlime>, <ore:blockSlime>, <ore:blockSlime>],
			[<ore:blockSlime>, dyeOredict, <ore:blockSlime>],
			[<ore:blockSlime>, <ore:blockSlime>, <ore:blockSlime>]
		]);
	}
}

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.darkutils.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.darkutils.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.darkutils.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.darkutils.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.darkutils.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.darkutils.namedShapelessRecipes;

	var removeRegex as string[] = scripts.crafttweaker.recipes.mods.darkutils.removeRegex;
	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.darkutils.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);

	// Create the slime block reicpes
	scripts.crafttweaker.recipes.mods.darkutils.initSlimeBlockRecipes();
}
