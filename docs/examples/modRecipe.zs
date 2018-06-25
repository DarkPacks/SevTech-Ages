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
static shapedRecipes as IIngredient[][][][string][IItemStack] = {
    null * 3 : {
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
static mirroredRecipes as IIngredient[][][][string][IItemStack] = {
    <minecraft:stick> : {
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
static shapelessRecipes as IIngredient[][][string][IItemStack] = {
    <minecraft:stick> : {
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
    var shapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.shapedRecipes;
    var mirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.mirroredRecipes;
    var shapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.shapelessRecipes;
    var removeRecipes as IIngredient[] = scripts.crafttweaker.recipes.mods.minecraft.removeRecipes;

    recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

    recipeUtil.removeRecipes(removeRecipes);
}
