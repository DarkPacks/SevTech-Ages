/*
    SevTech: Ages Progression Tweaks Recipe Script

    This script handles the recipes for Progression Tweaks.

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
	<progressiontweaks:unfired_clay_bowl:0>: [
		[
			[<minecraft:clay_ball:0>, null, <minecraft:clay_ball:0>],
			[<minecraft:clay_ball:0>, <minecraft:clay_ball:0>, <minecraft:clay_ball:0>]
		]
	],
	<progressiontweaks:blank_teleporter:0>: [
		[
			[<ore:dyeBlack>, <abyssalcraft:cpearl:0>, <ore:dyeBlack>],
			[metals.copper.block, metals.bronze.block, metals.tin.block],
			[<minecraft:coal_block:0>, <bloodmagic:blood_orb:0>.withTag({orb: "bloodmagic:apprentice"}), <minecraft:coal_block:0>]
		]
	],
	<progressiontweaks:spear:0>: [
		[
			[null, null, <primal:flint_knapp:0>],
			[null, <ore:stickWood>.firstItem, null],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<progressiontweaks:stone_hammer:0>: [
		[
			[<ore:cordageGeneral>, <ore:rock>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<progressiontweaks:tomahawk:0>: [
		[
			[<ore:cordageGeneral>, <primal:flint_knapp:0>],
			[<primal:flint_point:0>, <ore:stickWood>.firstItem]
		]
	],
	<progressiontweaks:fire_pit_unlit:0>: [
		[
			[null, <ore:stickWood>.firstItem, null],
			[<ore:stickWood>.firstItem, <ore:cordageGeneral>, <ore:stickWood>.firstItem],
			[<ore:rock>, <ore:rock>, <ore:rock>]
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
	<progressiontweaks:spear:0> : [
		[<progressiontweaks:broken_spear_shaft:0>, <ore:stickWood>.firstItem],
		[<progressiontweaks:broken_spear_tip:0>, <primal:flint_knapp:0>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
	Furnace Recipes
*/
static furnaceRecipes as IIngredient[][IItemStack] = {
	<progressiontweaks:flat_bread:0>: [<horsepower:flour:0>]
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<progressiontweaks:blank_teleporter:0>,
	<progressiontweaks:spear:0>,
	<progressiontweaks:stone_hammer:0>,
	<progressiontweaks:tomahawk:0>,
	<progressiontweaks:unfired_clay_bowl:0>
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

	// Furnace recipes
	recipeUtil.processFurnace(furnaceRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}
