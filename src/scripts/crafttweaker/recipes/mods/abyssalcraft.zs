/*
    SevTech: Ages AbyssalCraft Recipe Script

    This script handles the recipes for AbyssalCraft.

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
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<abyssalcraft:dltslab1:0> * 3: [
		[[<abyssalcraft:dltplank:0>, <abyssalcraft:dltplank:0>, <abyssalcraft:dltplank:0>]]
	],
	<abyssalcraft:necronomicon:0>: [
		[
			[<minecraft:rotten_flesh:0>, <abyssalcraft:corflesh:0>, <minecraft:rotten_flesh:0>],
			[<abyssalcraft:corflesh:0>, <primal:plant_cloth:0>, <abyssalcraft:corflesh:0>],
			[<minecraft:rotten_flesh:0>, <abyssalcraft:corflesh:0>, <minecraft:rotten_flesh:0>]
		]
	],
	<abyssalcraft:charm:0>: [
		[
			[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>],
			[<ore:dyeYellow>, metals.bronze.ingot, <ore:dyeYellow>],
			[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>]
		]
	],
	<abyssalcraft:decorativestatue:0>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball:0>],
			[<ore:dyeCyan>, null]
		]
	],
	<abyssalcraft:decorativestatue:1>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball:0>],
			[<ore:dyeYellow>, null]
		]
	],
	<abyssalcraft:decorativestatue:2>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball:0>],
			[<ore:dyeGray>, null]
		]
	],
	<abyssalcraft:decorativestatue:3>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball:0>],
			[<ore:dyePurple>, null]
		]
	],
	<abyssalcraft:decorativestatue:4>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball:0>],
			[<ore:dyeBlue>, null]
		]
	],
	<abyssalcraft:decorativestatue:5>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball:0>],
			[<ore:dyeOrange>, null]
		]
	],
	<abyssalcraft:decorativestatue:6>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball:0>],
			[<ore:dyeBlack>, null]
		]
	],
	<abyssalcraft:statue:0>: [
		[
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:decorativestatue:0>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>]
		]
	],
	<abyssalcraft:statue:1>: [
		[
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:decorativestatue:1>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>]
		]
	],
	<abyssalcraft:statue:2>: [
		[
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:decorativestatue:2>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>]
		]
	],
	<abyssalcraft:statue:3>: [
		[
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:decorativestatue:3>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>]
		]
	],
	<abyssalcraft:statue:4>: [
		[
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:decorativestatue:4>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>]
		]
	],
	<abyssalcraft:statue:5>: [
		[
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:decorativestatue:5>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>]
		]
	],
	<abyssalcraft:statue:6>: [
		[
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:decorativestatue:6>, <abyssalcraft:shoggothflesh:0>],
			[<abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>, <abyssalcraft:shoggothflesh:0>]
		]
	],
	<abyssalcraft:gatewaykey:0>: [
		[
			[null, <abyssalcraft:cpearl:0>, <abyssalcraft:oc:0>],
			[null, <thebetweenlands:items_misc:14>, <abyssalcraft:cpearl:0>],
			[<thebetweenlands:items_misc:14>, null, null]
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
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
	<abyssalcraft:corflesh:0>: {
		Utils.genRecipeName(stageOne, <abyssalcraft:corflesh:0>): [
			[<abyssalcraft:corbone:0>.transformReplace(<minecraft:bone:0>), <ore:toolWorkBlade>]
		]
	}
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<abyssalcraft:abyingot:0>,
	<abyssalcraft:charm:0>,
	<abyssalcraft:cingot:0>,
	<abyssalcraft:decorativestatue:1>,
	<abyssalcraft:decorativestatue:2>,
	<abyssalcraft:decorativestatue:3>,
	<abyssalcraft:decorativestatue:4>,
	<abyssalcraft:decorativestatue:5>,
	<abyssalcraft:decorativestatue:6>,
	<abyssalcraft:decorativestatue:0>,
	<abyssalcraft:dltslab1:0>,
	<abyssalcraft:dreadiumingot:0>,
	<abyssalcraft:gatewaykey:0>,
	<abyssalcraft:ingotblock:1>,
	<abyssalcraft:ingotblock:2>,
	<abyssalcraft:ingotblock:0>,
	<abyssalcraft:ingotnugget:1>,
	<abyssalcraft:ingotnugget:2>,
	<abyssalcraft:ingotnugget:3>,
	<abyssalcraft:ingotnugget:0>,
	<abyssalcraft:necronomicon:0>,
	<abyssalcraft:shadowfragment:0>,
	<abyssalcraft:shadowgem:0>,
	<abyssalcraft:shadowshard:0>
];

static removeFurnace as IIngredient[] = [
	<abyssalcraft:friedegg:0>
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
	recipeUtil.removeFurnace(removeFurnace);
}
