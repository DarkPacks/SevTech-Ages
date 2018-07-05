/*
    SevTech: Ages %mod% Recipe Script

    This script handles the recipes for %mod%.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.stages.stageOne;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:furnace>: [
		[
			[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
			[<ore:cobblestone>, null, <ore:cobblestone>],
			[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
    null * 3: {
        "nameless": [
            [[null, null, null]]
        ],
        Utils.genRecipeName(stageOne, "notforyou"): [
            [[],[], []]
        ]
    }
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:lead>: [
		[
			[<minecraft:string>, null, null],
			[null, <ore:cordageLeather>, null],
			[null, null, <minecraft:string>]
		]
	]
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
    <minecraft:stick>: {
        "nameless": [
            [[], [], []],
            [[], [], []]
        ],
        Utils.genRecipeName(stageOne, "notforyou"): [
            [[],[], []]
        ]
    }
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<minecraft:flint> * 9: [
		[<betterwithmods:aesthetic:5>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
    <minecraft:stick>: {
        "nameless": [
            [],
            []
        ],
        Utils.genRecipeName(stageOne, "notforyou"): [
            []
        ]
    }
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.minecraft.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.process(namedShapedRecipes, false);
    recipeUtil.process(namedMirroredRecipes, true);
    recipeUtil.process(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}
