/*
    SevTech: Ages Water Strainer Recipe Script

    This script handles the recipes for Water Strainer.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

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
	<waterstrainer:strainer_base:0> : [
		[
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem],
			[<ore:plankWood>, <primal_tech:wooden_hopper>, <ore:plankWood>],
			[<ore:plankWood>, <immcraft:chest:0>, <ore:plankWood>]
		]
	],
	<waterstrainer:garden_trowel:0> : [
		[
			[null, null, <minecraft:dirt:0>],
			[null, <minecraft:flint:0>, null],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<waterstrainer:bait_pot:0> : [
		[
			[<waterstrainer:net:0>],
			[<minecraft:flower_pot:0>]
		]
	],
	<waterstrainer:strainer_base:0>: [
		[
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem],
			[<ore:plankWood>, <primal_tech:wooden_hopper>, <ore:plankWood>],
			[<ore:plankWood>, <immcraft:chest:0>, <ore:plankWood>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<waterstrainer:strainer_base:0>: {
		Utils.genRecipeName(stageOne, <waterstrainer:strainer_base:0>): [
			[
				[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem],
				[<ore:plankWood>, <primal_tech:wooden_hopper>, <ore:plankWood>],
				[<ore:plankWood>, <minecraft:chest:0>, <ore:plankWood>]
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
static removeRecipes as IItemStack[] = [
	<waterstrainer:bait_pot:0>,
	<waterstrainer:garden_trowel:0>,
	<waterstrainer:strainer_base:0>
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
