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
	<chiselsandbits:bit_bag> : [
		[
			[<betterwithaddons:wool:*>, <betterwithaddons:wool:*>, <betterwithaddons:wool:*>],
			[<betterwithaddons:wool:*>, <minecraft:stone_button>, <betterwithaddons:wool:*>],
			[<betterwithaddons:wool:*>, <betterwithaddons:wool:*>, <betterwithaddons:wool:*>]
		]
	],
	<chiselsandbits:bittank> : [
		[
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem],
			[null, null, null],
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem]
		]
	],
	<chiselsandbits:negativeprint> : [
		[
			[craftingUtils.getBucketIngredient(<liquid:water>), <ore:dyeRed>],
			[<primal:plant_cloth>, null]
		]
	],
	<chiselsandbits:mirrorprint> : [
		[
			[craftingUtils.getBucketIngredient(<liquid:water>), <ore:dyeGreen>],
			[<primal:plant_cloth>, null]
		]
	],
	<chiselsandbits:positiveprint> : [
		[
			[craftingUtils.getBucketIngredient(<liquid:water>), <ore:dyeBlue>],
			[<primal:plant_cloth>, null]
		]
	],
	<chiselsandbits:chisel_iron> : [
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
	<chiselsandbits:negativeprint> : [
		[<chiselsandbits:negativeprint>]
	],
	<chiselsandbits:mirrorprint> : [
		[<chiselsandbits:mirrorprint>]
	],
	<chiselsandbits:positiveprint> : [
		[<chiselsandbits:positiveprint>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<chiselsandbits:bittank>,
	<chiselsandbits:chisel_iron>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.chiselsandbits.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.chiselsandbits.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.chiselsandbits.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.chiselsandbits.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.chiselsandbits.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.chiselsandbits.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.chiselsandbits.removeRecipes;

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
