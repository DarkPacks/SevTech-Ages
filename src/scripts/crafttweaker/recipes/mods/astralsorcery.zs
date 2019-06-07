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
			[<betterwithaddons:japanmat:11>, <astralsorcery:itemcraftingcomponent:0>, <betterwithaddons:japanmat:11>],
			[null, <betterwithaddons:japanmat:11>, null]
		]
	],
	<astralsorcery:itemjournal:0> : [
		[
			[null, <astralsorcery:itemcraftingcomponent:5>, null],
			[<astralsorcery:itemcraftingcomponent:0>, <primal:plant_cloth:0>, <astralsorcery:itemcraftingcomponent:0>],
			[null, <astralsorcery:itemcraftingcomponent:0>, null]
		]
	],
	<astralsorcery:itemskyresonator:0> : [
		[
			[null, <astralsorcery:itemcraftingcomponent:0>, null],
			[<ore:stoneMarble>, craftingUtils.getBucketAndTankIngredient(<liquid:astralsorcery.liquidstarlight>), <ore:stoneMarble>],
			[null, metals.bronze.rod, null]
		]
	],
	<astralsorcery:itemwand:0> : [
		[
			[null, <astralsorcery:itemcraftingcomponent:0>, <minecraft:ender_pearl:0>],
			[null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent:0>],
			[<ore:stoneMarble>, null, null]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<astralsorcery:itemcraftingcomponent:5>: {
		Utils.genRecipeName(stageTwo, <astralsorcery:itemcraftingcomponent:5>): [
			[
				[null, <minecraft:paper:0>, null],
				[<minecraft:paper:0>, <astralsorcery:itemcraftingcomponent:0>, <minecraft:paper:0>],
				[null, <minecraft:paper:0>, null]
			]
		]
	},
	<astralsorcery:itemjournal:0>: {
		Utils.genRecipeName(stageTwo, <astralsorcery:itemjournal:0>): [
			[
				[null, <astralsorcery:itemcraftingcomponent:5>, null],
				[<astralsorcery:itemcraftingcomponent:0>, <minecraft:book:0>, <astralsorcery:itemcraftingcomponent:0>],
				[null, <astralsorcery:itemcraftingcomponent:0>, null]
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
	<astralsorcery:itemcraftingcomponent:5>,
	<astralsorcery:itemjournal:0>,
	<astralsorcery:itemwand:0>
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
