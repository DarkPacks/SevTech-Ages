/*
    SevTech: Ages Chisel & Bits Recipe Script

    This script handles the recipes for Chisel & Bits.

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
	<chiselsandbits:bit_bag:0> : [
		[
			[<betterwithaddons:wool:*>, <betterwithaddons:wool:*>, <betterwithaddons:wool:*>],
			[<betterwithaddons:wool:*>, <minecraft:stone_button:0>, <betterwithaddons:wool:*>],
			[<betterwithaddons:wool:*>, <betterwithaddons:wool:*>, <betterwithaddons:wool:*>]
		]
	],
	<chiselsandbits:bittank:0> : [
		[
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem],
			[null, null, null],
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem]
		]
	],
	<chiselsandbits:negativeprint:0> : [
		[
			[craftingUtils.getBucketAndTankIngredient(<liquid:water>), <ore:dyeRed>],
			[<primal:plant_cloth:0>, null]
		],
		[
			[craftingUtils.getBucketAndTankIngredient(<liquid:water>), <ore:dustRedstone>],
			[<minecraft:paper:0>, null]
		]
	],
	<chiselsandbits:mirrorprint:0> : [
		[
			[craftingUtils.getBucketAndTankIngredient(<liquid:water>), <ore:dyeGreen>],
			[<primal:plant_cloth:0>, null]
		],
		[
			[craftingUtils.getBucketAndTankIngredient(<liquid:water>), <ore:dustGlowstone>],
			[<minecraft:paper:0>, null]
		]
	],
	<chiselsandbits:positiveprint:0> : [
		[
			[craftingUtils.getBucketAndTankIngredient(<liquid:water>), <ore:dyeBlue>],
			[<primal:plant_cloth:0>, null]
		],
		[
			[craftingUtils.getBucketAndTankIngredient(<liquid:water>), <ore:gemLapis>],
			[<minecraft:paper:0>, null]
		]
	],
	<chiselsandbits:chisel_iron:0> : [
		[
			[metals.tin.ingot, <ore:stickWood>.firstItem],
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
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
	<chiselsandbits:negativeprint:0> : [
		[<chiselsandbits:negativeprint:0>]
	],
	<chiselsandbits:mirrorprint:0> : [
		[<chiselsandbits:mirrorprint:0>]
	],
	<chiselsandbits:positiveprint:0> : [
		[<chiselsandbits:positiveprint:0>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<chiselsandbits:bittank:0>,
	<chiselsandbits:chisel_iron:0>,
	<chiselsandbits:negativeprint:0>,
	<chiselsandbits:mirrorprint:0>,
	<chiselsandbits:positiveprint:0>
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
