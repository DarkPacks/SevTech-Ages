/*
    SevTech: Ages Better With Addons Recipe Script

    This script handles the recipes for Better With Addons.

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
	<betterwithaddons:bolt:1> : [
		[
			[<minecraft:vine:0>, <minecraft:vine:0>, <minecraft:vine:0>],
			[<minecraft:vine:0>, <betterwithaddons:spindle:0>, <minecraft:vine:0>],
			[<minecraft:vine:0>, <minecraft:vine:0>, <minecraft:vine:0>]
		]
	],
	<betterwithaddons:bolt:3> : [
		[
			[<minecraft:leather:0>, <minecraft:leather:0>, <minecraft:leather:0>],
			[<minecraft:leather:0>, <betterwithaddons:spindle:0>, <minecraft:leather:0>],
			[<minecraft:leather:0>, <minecraft:leather:0>, <minecraft:leather:0>]
		]
	],
	<betterwithaddons:bolt:6> : [
		[
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>],
			[<minecraft:string:0>, <betterwithaddons:spindle:0>, <minecraft:string:0>],
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>]
		]
	],
	<betterwithaddons:spindle:0> : [
		[
			[<ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem]
		]
	],
	<betterwithaddons:aqueduct:10> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<minecraft:prismarine:2>, <minecraft:prismarine:2>, <minecraft:prismarine:2>]
		]
	],
	<betterwithaddons:aqueduct:1> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<minecraft:brick_block:0>, <minecraft:brick_block:0>, <minecraft:brick_block:0>]
		]
	],
	<betterwithaddons:aqueduct:2> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<minecraft:quartz_block:*>, <minecraft:quartz_block:*>, <minecraft:quartz_block:*>]
		]
	],
	<betterwithaddons:aqueduct:3> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<betterwithaddons:whitebrick:0>, <betterwithaddons:whitebrick:0>, <betterwithaddons:whitebrick:0>]
		]
	],
	<betterwithaddons:aqueduct:4> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<minecraft:sandstone:*>, <minecraft:sandstone:*>, <minecraft:sandstone:*>]
		]
	],
	<betterwithaddons:aqueduct:5> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<minecraft:red_sandstone:*>, <minecraft:red_sandstone:*>, <minecraft:red_sandstone:*>]
		]
	],
	<betterwithaddons:aqueduct:6> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]
		]
	],
	<betterwithaddons:aqueduct:7> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<minecraft:stone:2>, <minecraft:stone:2>, <minecraft:stone:2>]
		]
	],
	<betterwithaddons:aqueduct:8> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<minecraft:stone:4>, <minecraft:stone:4>, <minecraft:stone:4>]
		]
	],
	<betterwithaddons:aqueduct:9> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<minecraft:prismarine:0>, <minecraft:prismarine:0>, <minecraft:prismarine:0>]
		]
	],
	<betterwithaddons:redstone_emitter:0> : [
		[
			[sidingWood, sidingWood, sidingWood],
			[<betterwithmods:wicker:0>, <betterwithmods:wooden_gearbox:0>, <minecraft:lever:0>],
			[sidingWood, sidingWood, sidingWood]
		]
	],
	<betterwithaddons:aqueduct:0> * 3 : [
		[
			[<minecraft:clay:0>, <minecraft:clay:0>, <minecraft:clay:0>],
			[<minecraft:stonebrick:*>, <minecraft:stonebrick:*>, <minecraft:stonebrick:*>]
		]
	],
	<betterwithaddons:loom:0>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <betterwithmods:material:0>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
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
	<betterwithaddons:wool:0> : [
		[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>]
	],
	<betterwithaddons:japanmat:8> : [
		[<primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <betterwithaddons:japanmat:36>]
	],
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<betterwithaddons:aqueduct:0>,
	<betterwithaddons:aqueduct:10>,
	<betterwithaddons:aqueduct:1>,
	<betterwithaddons:aqueduct:2>,
	<betterwithaddons:aqueduct:3>,
	<betterwithaddons:aqueduct:4>,
	<betterwithaddons:aqueduct:5>,
	<betterwithaddons:aqueduct:6>,
	<betterwithaddons:aqueduct:7>,
	<betterwithaddons:aqueduct:8>,
	<betterwithaddons:aqueduct:9>,
	<betterwithaddons:bolt:1>,
	<betterwithaddons:bolt:3>,
	<betterwithaddons:bolt:6>,
	<betterwithaddons:decomat:3>,
	<betterwithaddons:loom:0>,
	<betterwithaddons:redstone_emitter:0>,
	<betterwithaddons:spindle:0>,
	<betterwithaddons:tatami:0>
];

static removeFurnace as IIngredient[] = [
	<betterwithaddons:japanmat:2>
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
