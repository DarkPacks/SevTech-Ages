/*
    SevTech: Ages TComplement Recipe Script

    This script handles the recipes for TComplement.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.betterwithmods.MiniBlocks;
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
	<tcomplement:melter:8> : [
		[
			[<tconstruct:seared:3>, <ceramics:clay_barrel:1>, <tconstruct:seared:3>],
			[<tconstruct:seared:3>, <ceramics:clay_barrel:1>, <tconstruct:seared:3>],
			[<tconstruct:seared:3>, <primal_tech:stone_grill>, <tconstruct:seared:3>]
		]
	],
	<tcomplement:melter:0> : [
		[
			[<tconstruct:seared:3>, <primal_tech:charcoal_hopper>, <tconstruct:seared:3>],
			[<tconstruct:seared:3>, <primal_tech:stone_grill>, <tconstruct:seared:3>],
			[<tconstruct:seared:3>, <primalchests:primal_chest_advanced:0>, <tconstruct:seared:3>]
		]
	],
	<tcomplement:porcelain_melter:8> : [
		[
			[<ceramics:unfired_clay:5>, <ceramics:clay_barrel:1>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <ceramics:clay_barrel:1>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <primal_tech:stone_grill>, <ceramics:unfired_clay:5>]
		]
	],
	<tcomplement:porcelain_melter:0> : [
		[
			[<ceramics:unfired_clay:5>, <primal_tech:charcoal_hopper>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <primal_tech:stone_grill>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <primalchests:primal_chest_advanced:0>, <ceramics:unfired_clay:5>]
		]
	],
	<tcomplement:porcelain_tank:0> : [
		[
			[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <ceramics:clay_barrel:0>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
		]
	],
	<tcomplement:porcelain_casting:1>: [
		[
			[<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<tcomplement:porcelain_melter:8>: {
		Utils.genRecipeName(stageOne, <tcomplement:porcelain_melter:8>): [
			[
				[null, <ceramics:unfired_clay:5>, null],
				[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
				[<ceramics:unfired_clay:5>, <minecraft:furnace:0>, <ceramics:unfired_clay:5>]
			]
		]
	},
	<tcomplement:porcelain_melter:0>: {
		Utils.genRecipeName(stageOne, <tcomplement:porcelain_melter:0>): [
			[
				[null, <ceramics:unfired_clay:5>, null],
				[<ceramics:unfired_clay:5>, <minecraft:furnace:0>, <ceramics:unfired_clay:5>],
				[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
			]
		]
	},
	<tcomplement:melter:8>: {
		Utils.genRecipeName(stageOne, <tcomplement:melter:8>): [
			[
				[null, <tconstruct:materials:0>, null],
				[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
				[<tconstruct:materials:0>, <minecraft:furnace:0>, <tconstruct:materials:0>]
			]
		]
	},
	<tcomplement:melter:0>: {
		Utils.genRecipeName(stageOne, <tcomplement:melter:0>): [
			[
				[null, <tconstruct:materials:0>, null],
				[<tconstruct:materials:0>, <minecraft:furnace:0>, <tconstruct:materials:0>],
				[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
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
	<tcomplement:melter:8>,
	<tcomplement:melter:0>,
	<tcomplement:porcelain_casting:1>,
	<tcomplement:porcelain_melter:8>,
	<tcomplement:porcelain_melter:0>
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
