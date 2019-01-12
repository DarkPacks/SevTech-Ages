/*
    SevTech: Ages Applied Energistics 2 Recipe Script

    This script handles the recipes for Applied Energistics 2.

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
	<appliedenergistics2:crank:0> : [
		[
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[null, null, <ore:stickWood>.firstItem],
			[null, null, <ore:stickWood>.firstItem]
		]
	],
	<appliedenergistics2:grindstone:0> : [
		[
			[<minecraft:stone:0>, <betterwithmods:material:0>, <minecraft:stone:0>],
			[<minecraft:flint:0>, <minecraft:stone:0>, <minecraft:flint:0>],
			[<minecraft:cobblestone:0>, <minecraft:flint:0>, <minecraft:cobblestone:0>]
		]
	],
	<appliedenergistics2:part:180>: [
		[
			[null, <extendedcrafting:material:7>, <appliedenergistics2:quartz_glass:0>],
			[<refinedstorage:quartz_enriched_iron:0>, <minecraft:redstone:0>, <appliedenergistics2:quartz_glass:0>],
			[null, <extendedcrafting:material:7>, <appliedenergistics2:quartz_glass:0>]
		]
	],
	<appliedenergistics2:part:380>: [
		[
			[<appliedenergistics2:part:180>, <appliedenergistics2:material:43>],
			[<appliedenergistics2:material:44>, <appliedenergistics2:material:22>]
		]
	],
	<appliedenergistics2:part:360>: [
		[
			[<appliedenergistics2:part:380>],
			[<extendedcrafting:table_advanced:0>],
			[<appliedenergistics2:material:24>]
		]
	],
	<appliedenergistics2:interface:0>: [
		[
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:quartz_glass:0>, <refinedstorage:quartz_enriched_iron:0>],
			[<appliedenergistics2:material:43>, <appliedenergistics2:material:22>, <appliedenergistics2:material:44>],
			[<refinedstorage:quartz_enriched_iron:0>, <appliedenergistics2:quartz_glass:0>, <refinedstorage:quartz_enriched_iron:0>]
		]
	],
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
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<appliedenergistics2:crank:0>,
	<appliedenergistics2:grindstone:0>,
	<appliedenergistics2:interface:0>,
	<appliedenergistics2:material:40>,
	<appliedenergistics2:part:180>,
	<appliedenergistics2:part:360>,
	<appliedenergistics2:part:380>,
	<appliedenergistics2:quartz_glass:0>
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
