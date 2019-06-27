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
	<totemic:cedar_fence_gate>: [
		[
			[<minecraft:stick:0>, <totemic:cedar_plank:0>, <minecraft:stick:0>],
			[<minecraft:stick:0>, <totemic:cedar_plank:0>, <minecraft:stick:0>]
		]
	],
	<totemic:cedar_fence> * 3: [
		[
			[<totemic:cedar_plank:0>, <minecraft:stick:0>, <totemic:cedar_plank:0>],
			[<totemic:cedar_plank:0>, <minecraft:stick:0>, <totemic:cedar_plank:0>]
		]
	],
	<totemic:cedar_slab:0> * 3: [
		[
			[<totemic:cedar_plank:0>, <totemic:cedar_plank:0>, <totemic:cedar_plank:0>]
		]
	],
	<totemic:cedar_stairs:0> * 4: [
		[
			[<totemic:cedar_plank:0>, null, null],
			[<totemic:cedar_plank:0>, <totemic:cedar_plank:0>, null],
			[<totemic:cedar_plank:0>, <totemic:cedar_plank:0>, <totemic:cedar_plank:0>]
		]
	],
	<totemic:eagle_bone_whistle:0> : [
		[
			[null, <totemic:eagle_drops:0>],
			[<totemic:eagle_drops:1>, null]
		]
	],
	<totemic:drum:0> : [
		[
			[<ore:plankWood>, <minecraft:leather:0>, <ore:plankWood>],
			[<ore:plankWood>, null, <ore:plankWood>],
			[<ore:plankWood>, null, <ore:plankWood>]
		]
	],
	<totemic:flute:0> : [
		[
			[null, <minecraft:tallgrass:*>, <minecraft:reeds:0>],
			[null, <minecraft:reeds:0>, null],
			[<minecraft:reeds:0>, null, null]
		]
	],
	<totemic:jingle_dress:0> : [
		[
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>],
			[<totemic:sub_items:1>, <totemic:sub_items:1>, <totemic:sub_items:1>]
		]
	],
	<totemic:rattle:0> : [
		[
			[null, <totemic:sub_items:1>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<totemic:sub_items:1> : [
		[
			[<minecraft:bone:0>, <minecraft:reeds:0>, <minecraft:bone:0>],
			[<minecraft:reeds:0>, <minecraft:bone:0>, <minecraft:reeds:0>]
		]
	],
	<totemic:tipi:0> : [
		[
			[<ore:stickWood>.firstItem, <minecraft:leather:0>, <ore:stickWood>.firstItem],
			[<minecraft:leather:0>, <ore:stickWood>.firstItem, <minecraft:leather:0>],
			[<minecraft:leather:0>, <ore:stickWood>.firstItem, <minecraft:leather:0>]
		]
	],
	<totemic:totem_torch:0> : [
		[
			[<primal_tech:fibre_torch_lit>],
			[<ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem]
		]
	],
	<totemic:totem_whittling_knife:0> : [
		[
			[null, <primal:flint_knapp:0>],
			[<ore:stickWood>.firstItem, null]
		]
	],
	<totemic:totemic_staff:0> : [
		[
			[null, <minecraft:red_flower:0>, <minecraft:double_plant:0>],
			[null, <ore:stickWood>.firstItem, <minecraft:yellow_flower:0>],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<totemic:wind_chime:0> : [
		[
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:string:0>, <minecraft:flint:0>, <minecraft:string:0>],
			[<minecraft:reeds:0>, <minecraft:bone:0>, <minecraft:reeds:0>]
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
	<totemic:totempedia:0>: [
		[<ore:treeSapling>, <primal:plant_cloth:0>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [];

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

//Testing to confirm fix for knife duplication bug
<totemic:totem_whittling_knife>.definition.setNoRepair();