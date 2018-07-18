/*
    SevTech: Ages Totemic Recipe Script

    This script handles the recipes for Totemic.

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
	<totemic:eagle_bone_whistle> : [
		[
			[null, <totemic:eagle_drops>],
			[<totemic:eagle_drops:1>, null]
		]
	],
	<totemic:drum> : [
		[
			[<ore:plankWood>, <minecraft:leather>, <ore:plankWood>],
			[<ore:plankWood>, null, <ore:plankWood>],
			[<ore:plankWood>, null, <ore:plankWood>]
		]
	],
	<totemic:flute> : [
		[
			[null, <minecraft:tallgrass:*>, <minecraft:reeds>],
			[null, <minecraft:reeds>, null],
			[<minecraft:reeds>, null, null]
		]
	],
	<totemic:jingle_dress> : [
		[
			[<minecraft:string>, <minecraft:string>, <minecraft:string>],
			[<totemic:sub_items:1>, <totemic:sub_items:1>, <totemic:sub_items:1>]
		]
	],
	<totemic:rattle> : [
		[
			[null, <totemic:sub_items:1>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<totemic:sub_items:1> : [
		[
			[<minecraft:bone>, <minecraft:reeds>, <minecraft:bone>],
			[<minecraft:reeds>, <minecraft:bone>, <minecraft:reeds>],
			[null, null, null]
		]
	],
	<totemic:tipi> : [
		[
			[<ore:stickWood>.firstItem, <minecraft:leather>, <ore:stickWood>.firstItem],
			[<minecraft:leather>, <ore:stickWood>.firstItem, <minecraft:leather>],
			[<minecraft:leather>, <ore:stickWood>.firstItem, <minecraft:leather>]
		]
	],
	<totemic:totem_torch> : [
		[
			[null, <primal_tech:fibre_torch_lit>, null],
			[null, <ore:stickWood>.firstItem, null],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<totemic:totem_whittling_knife> : [
		[
			[null, <primal:flint_knapp>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<totemic:totemic_staff> : [
		[
			[null, <minecraft:red_flower>, <minecraft:double_plant>],
			[null, <ore:stickWood>.firstItem, <minecraft:yellow_flower>],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<totemic:wind_chime> : [
		[
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:string>, <minecraft:flint>, <minecraft:string>],
			[<minecraft:reeds>, <minecraft:bone>, <minecraft:reeds>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<totemic:totempedia>: [
		[<ore:treeSapling>, <primal:plant_cloth>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.totemic.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.totemic.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.totemic.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.totemic.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.totemic.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.totemic.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.totemic.removeRecipes;

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
