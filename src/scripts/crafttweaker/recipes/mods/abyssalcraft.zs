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
	<abyssalcraft:dltslab1> * 3: [
		[[<abyssalcraft:dltplank>, <abyssalcraft:dltplank>, <abyssalcraft:dltplank>]]
	],
	<abyssalcraft:necronomicon>: [
		[
			[<minecraft:rotten_flesh>, <abyssalcraft:corflesh>, <minecraft:rotten_flesh>],
			[<abyssalcraft:corflesh>, <primal:plant_cloth>, <abyssalcraft:corflesh>],
			[<minecraft:rotten_flesh>, <abyssalcraft:corflesh>, <minecraft:rotten_flesh>]
		]
	],
	<abyssalcraft:charm>: [
		[
			[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>],
			[<ore:dyeYellow>, metals.bronze.ingot, <ore:dyeYellow>],
			[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>]
		]
	],
	<abyssalcraft:decorativestatue>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball>],
			[<ore:dyeCyan>, null]
		]
	],
	<abyssalcraft:decorativestatue:1>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball>],
			[<ore:dyeYellow>, null]
		]
	],
	<abyssalcraft:decorativestatue:2>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball>],
			[<ore:dyeGray>, null]
		]
	],
	<abyssalcraft:decorativestatue:3>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball>],
			[<ore:dyePurple>, null]
		]
	],
	<abyssalcraft:decorativestatue:4>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball>],
			[<ore:dyeBlue>, null]
		]
	],
	<abyssalcraft:decorativestatue:5>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball>],
			[<ore:dyeOrange>, null]
		]
	],
	<abyssalcraft:decorativestatue:6>: [
		[
			[<abyssalcraft:stone:7>, <minecraft:clay_ball>],
			[<ore:dyeBlack>, null]
		]
	],
	<abyssalcraft:statue>: [
		[
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:decorativestatue>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>]
		]
	],
	<abyssalcraft:statue:1>: [
		[
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:decorativestatue:1>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>]
		]
	],
	<abyssalcraft:statue:2>: [
		[
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:decorativestatue:2>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>]
		]
	],
	<abyssalcraft:statue:3>: [
		[
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:decorativestatue:3>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>]
		]
	],
	<abyssalcraft:statue:4>: [
		[
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:decorativestatue:4>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>]
		]
	],
	<abyssalcraft:statue:5>: [
		[
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:decorativestatue:5>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>]
		]
	],
	<abyssalcraft:statue:6>: [
		[
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:decorativestatue:6>, <abyssalcraft:shoggothflesh>],
			[<abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>, <abyssalcraft:shoggothflesh>]
		]
	],
	<abyssalcraft:gatewaykey>: [
		[
			[null, <abyssalcraft:cpearl>, <abyssalcraft:oc>],
			[null, <thebetweenlands:items_misc:14>, <abyssalcraft:cpearl>],
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
	<abyssalcraft:corflesh>: {
		Utils.genRecipeName(stageOne, <abyssalcraft:corflesh>): [
			[<abyssalcraft:corbone>.transformReplace(<minecraft:bone>), <ore:toolWorkBlade>]
		]
	}
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<abyssalcraft:charm>,
	<abyssalcraft:decorativestatue:1>,
	<abyssalcraft:decorativestatue:2>,
	<abyssalcraft:decorativestatue:3>,
	<abyssalcraft:decorativestatue:4>,
	<abyssalcraft:decorativestatue:5>,
	<abyssalcraft:decorativestatue:6>,
	<abyssalcraft:decorativestatue>,
	<abyssalcraft:dltslab1>,
	<abyssalcraft:gatewaykey>,
	<abyssalcraft:necronomicon>,
	<abyssalcraft:shadowfragment>,
	<abyssalcraft:shadowgem>,
	<abyssalcraft:shadowshard>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.abyssalcraft.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.abyssalcraft.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.abyssalcraft.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.abyssalcraft.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.abyssalcraft.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.abyssalcraft.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.abyssalcraft.removeRecipes;

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
