/*
    SevTech: Ages Astral Sorcery Recipe Script

    This script handles the recipes for Astral Sorcery.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.craftingUtils;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<astralsorcery:itemcraftingcomponent:5> : [
		[
			[null, <betterwithaddons:japanmat:11>, null],
			[<betterwithaddons:japanmat:11>, <astralsorcery:itemcraftingcomponent>, <betterwithaddons:japanmat:11>],
			[null, <betterwithaddons:japanmat:11>, null]
		]
	],
	<astralsorcery:itemjournal> : [
		[
			[null, <astralsorcery:itemcraftingcomponent:5>, null],
			[<astralsorcery:itemcraftingcomponent>, <primal:plant_cloth>, <astralsorcery:itemcraftingcomponent>],
			[null, <astralsorcery:itemcraftingcomponent>, null]
		]
	],
	<astralsorcery:itemskyresonator> : [
		[
			[null, <astralsorcery:itemcraftingcomponent>, null],
			[<ore:stoneMarble>, craftingUtils.getBucketIngredient(<liquid:astralsorcery.liquidstarlight>), <ore:stoneMarble>],
			[null, metals.bronze.rod, null]
		]
	],
	<astralsorcery:itemwand> : [
		[
			[null, <astralsorcery:itemcraftingcomponent>, <minecraft:ender_pearl>],
			[null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>],
			[<ore:stoneMarble>, null, null]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<astralsorcery:itemjournal>: {
		Utils.genRecipeName(stageTwo, <astralsorcery:itemjournal>): [
			[
				[null, <astralsorcery:itemcraftingcomponent:5>, null],
				[<astralsorcery:itemcraftingcomponent>, <minecraft:book>, <astralsorcery:itemcraftingcomponent>],
				[null, <astralsorcery:itemcraftingcomponent>, null]
			]
		]
	}
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<astralsorcery:itemwand>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.astralsorcery.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.astralsorcery.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.astralsorcery.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.astralsorcery.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.astralsorcery.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.astralsorcery.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.astralsorcery.removeRecipes;

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
