/*
    SevTech: Ages Natura Recipe Script

    This script handles the recipes for Natura.

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
	<natura:nether_slab:1> * 3 : [
		[
			[<natura:nether_planks>, <natura:nether_planks>, <natura:nether_planks>]
		]
	],
	<natura:nether_slab:2> * 3 : [
		[
			[<natura:nether_planks:2>, <natura:nether_planks:2>, <natura:nether_planks:2>]
		]
	],
	<natura:nether_slab:3> * 3 : [
		[
			[<natura:nether_planks:3>, <natura:nether_planks:3>, <natura:nether_planks:3>]
		]
	],
	<natura:nether_slab> * 3 : [
		[
			[<natura:nether_planks:1>, <natura:nether_planks:1>, <natura:nether_planks:1>]
		]
	],
	<natura:overworld_slab2:1> * 3 : [
		[
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>, <natura:overworld_planks:6>]
		]
	],
	<natura:overworld_slab2:2> * 3 : [
		[
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>, <natura:overworld_planks:7>]
		]
	],
	<natura:overworld_slab2:3> * 3 : [
		[
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>, <natura:overworld_planks:8>]
		]
	],
	<natura:overworld_slab2> * 3 : [
		[
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>, <natura:overworld_planks:5>]
		]
	],
	<natura:overworld_slab:1> * 3 : [
		[
			[<natura:overworld_planks:1>, <natura:overworld_planks:1>, <natura:overworld_planks:1>]
		]
	],
	<natura:overworld_slab:2> * 3 : [
		[
			[<natura:overworld_planks:2>, <natura:overworld_planks:2>, <natura:overworld_planks:2>]
		]
	],
	<natura:overworld_slab:3> * 3 : [
		[
			[<natura:overworld_planks:3>, <natura:overworld_planks:3>, <natura:overworld_planks:3>]
		]
	],
	<natura:overworld_slab:4> * 3 : [
		[
			[<natura:overworld_planks:4>, <natura:overworld_planks:4>, <natura:overworld_planks:4>]
		]
	],
	<natura:overworld_slab> * 3 : [
		[
			[<natura:overworld_planks>, <natura:overworld_planks>, <natura:overworld_planks>]
		]
	],
	<natura:overworld_bookshelves> : [
		[
			[<natura:overworld_planks>, <natura:overworld_planks>, <natura:overworld_planks>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks>, <natura:overworld_planks>, <natura:overworld_planks>]
		]
	],
	<natura:overworld_bookshelves:1> : [
		[
			[<natura:overworld_planks:1>, <natura:overworld_planks:1>, <natura:overworld_planks:1>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:1>, <natura:overworld_planks:1>, <natura:overworld_planks:1>]
		]
	],
	<natura:overworld_bookshelves:2> : [
		[
			[<natura:overworld_planks:2>, <natura:overworld_planks:2>, <natura:overworld_planks:2>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:2>, <natura:overworld_planks:2>, <natura:overworld_planks:2>]
		]
	],
	<natura:overworld_bookshelves:3> : [
		[
			[<natura:overworld_planks:3>, <natura:overworld_planks:3>, <natura:overworld_planks:3>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:3>, <natura:overworld_planks:3>, <natura:overworld_planks:3>]
		]
	],
	<natura:overworld_bookshelves:4> : [
		[
			[<natura:overworld_planks:4>, <natura:overworld_planks:4>, <natura:overworld_planks:4>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:4>, <natura:overworld_planks:4>, <natura:overworld_planks:4>]
		]
	],
	<natura:overworld_bookshelves:5> : [
		[
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>, <natura:overworld_planks:5>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>, <natura:overworld_planks:5>]
		]
	],
	<natura:overworld_bookshelves:6> : [
		[
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>, <natura:overworld_planks:6>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>, <natura:overworld_planks:6>]
		]
	],
	<natura:overworld_bookshelves:7> : [
		[
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>, <natura:overworld_planks:7>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>, <natura:overworld_planks:7>]
		]
	],
	<natura:overworld_bookshelves:8> : [
		[
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>, <natura:overworld_planks:8>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>, <natura:overworld_planks:8>]
		]
	],
	<natura:maple_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:overworld_planks>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:overworld_planks>, <ore:stickWood>.firstItem]
		]
	],
	<natura:silverbell_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:1>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:1>, <ore:stickWood>.firstItem]
		]
	],
	<natura:amaranth_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:2>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:2>, <ore:stickWood>.firstItem]
		]
	],
	<natura:tiger_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:3>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:3>, <ore:stickWood>.firstItem]
		]
	],
	<natura:willow_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:4>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:4>, <ore:stickWood>.firstItem]
		]
	],
	<natura:eucalyptus_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:5>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:5>, <ore:stickWood>.firstItem]
		]
	],
	<natura:hopseed_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:6>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:6>, <ore:stickWood>.firstItem]
		]
	],
	<natura:sakura_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:7>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:7>, <ore:stickWood>.firstItem]
		]
	],
	<natura:redwood_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:8>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:overworld_planks:8>, <ore:stickWood>.firstItem]
		]
	],
	<natura:maple_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks>, <ore:stickWood>.firstItem, <natura:overworld_planks>],
			[<natura:overworld_planks>, <ore:stickWood>.firstItem, <natura:overworld_planks>]
		]
	],
	<natura:silverbell_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:1>, <ore:stickWood>.firstItem, <natura:overworld_planks:1>],
			[<natura:overworld_planks:1>, <ore:stickWood>.firstItem, <natura:overworld_planks:1>]
		]
	],
	<natura:amaranth_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:2>, <ore:stickWood>.firstItem, <natura:overworld_planks:2>],
			[<natura:overworld_planks:2>, <ore:stickWood>.firstItem, <natura:overworld_planks:2>]
		]
	],
	<natura:tiger_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:3>, <ore:stickWood>.firstItem, <natura:overworld_planks:3>],
			[<natura:overworld_planks:3>, <ore:stickWood>.firstItem, <natura:overworld_planks:3>]
		]
	],
	<natura:willow_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:4>, <ore:stickWood>.firstItem, <natura:overworld_planks:4>],
			[<natura:overworld_planks:4>, <ore:stickWood>.firstItem, <natura:overworld_planks:4>]
		]
	],
	<natura:eucalyptus_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:5>, <ore:stickWood>.firstItem, <natura:overworld_planks:5>],
			[<natura:overworld_planks:5>, <ore:stickWood>.firstItem, <natura:overworld_planks:5>]
		]
	],
	<natura:hopseed_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:6>, <ore:stickWood>.firstItem, <natura:overworld_planks:6>],
			[<natura:overworld_planks:6>, <ore:stickWood>.firstItem, <natura:overworld_planks:6>]
		]
	],
	<natura:sakura_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:7>, <ore:stickWood>.firstItem, <natura:overworld_planks:7>],
			[<natura:overworld_planks:7>, <ore:stickWood>.firstItem, <natura:overworld_planks:7>]
		]
	],
	<natura:redwood_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:8>, <ore:stickWood>.firstItem, <natura:overworld_planks:8>],
			[<natura:overworld_planks:8>, <ore:stickWood>.firstItem, <natura:overworld_planks:8>]
		]
	],
	<natura:overworld_doors> * 3 : [
		[
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>],
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>],
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>]
		]
	],
	<natura:overworld_doors:1> * 3 : [
		[
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>],
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>],
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>]
		]
	],
	<natura:overworld_doors:2> * 3 : [
		[
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>],
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>],
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>]
		]
	],
	<natura:overworld_doors:3> * 3 : [
		[
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>],
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>],
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>]
		]
	],
	<natura:overworld_doors:4> * 3 : [
		[
			[<natura:redwood_logs>, <natura:redwood_logs>],
			[<natura:redwood_logs>, <natura:redwood_logs>],
			[<natura:redwood_logs>, <natura:redwood_logs>]
		]
	],
	<natura:netherrack_furnace> : [
		[
			[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>],
			[<minecraft:nether_brick>, <minecraft:furnace>, <minecraft:nether_brick>],
			[<minecraft:nether_brick>, <minecraft:blaze_powder>, <minecraft:nether_brick>]
		]
	],
	<natura:nether_bookshelves> : [
		[
			[<natura:nether_planks>, <natura:nether_planks>, <natura:nether_planks>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:nether_planks>, <natura:nether_planks>, <natura:nether_planks>]
		]
	],
	<natura:nether_bookshelves:1> : [
		[
			[<natura:nether_planks:1>, <natura:nether_planks:1>, <natura:nether_planks:1>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:nether_planks:1>, <natura:nether_planks:1>, <natura:nether_planks:1>]
		]
	],
	<natura:nether_bookshelves:2> : [
		[
			[<natura:nether_planks:2>, <natura:nether_planks:2>, <natura:nether_planks:2>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:nether_planks:2>, <natura:nether_planks:2>, <natura:nether_planks:2>]
		]
	],
	<natura:nether_bookshelves:3> : [
		[
			[<natura:nether_planks:3>, <natura:nether_planks:3>, <natura:nether_planks:3>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:nether_planks:3>, <natura:nether_planks:3>, <natura:nether_planks:3>]
		]
	],
	<natura:ghostwood_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:nether_planks>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:nether_planks>, <ore:stickWood>.firstItem]
		]
	],
	<natura:bloodwood_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:nether_planks:1>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:nether_planks:1>, <ore:stickWood>.firstItem]
		]
	],
	<natura:darkwood_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:nether_planks:2>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:nether_planks:2>, <ore:stickWood>.firstItem]
		]
	],
	<natura:fusewood_fence_gate> : [
		[
			[null, null, null],
			[<ore:stickWood>.firstItem, <natura:nether_planks:3>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <natura:nether_planks:3>, <ore:stickWood>.firstItem]
		]
	],
	<natura:ghostwood_fence> * 3 : [
		[
			[null, null, null],
			[<natura:nether_planks>, <ore:stickWood>.firstItem, <natura:nether_planks>],
			[<natura:nether_planks>, <ore:stickWood>.firstItem, <natura:nether_planks>]
		]
	],
	<natura:bloodwood_fence> * 3 : [
		[
			[null, null, null],
			[<natura:nether_planks:1>, <ore:stickWood>.firstItem, <natura:nether_planks:1>],
			[<natura:nether_planks:1>, <ore:stickWood>.firstItem, <natura:nether_planks:1>]
		]
	],
	<natura:darkwood_fence> * 3 : [
		[
			[null, null, null],
			[<natura:nether_planks:2>, <ore:stickWood>.firstItem, <natura:nether_planks:2>],
			[<natura:nether_planks:2>, <ore:stickWood>.firstItem, <natura:nether_planks:2>]
		]
	],
	<natura:fusewood_fence> * 3 : [
		[
			[null, null, null],
			[<natura:nether_planks:3>, <ore:stickWood>.firstItem, <natura:nether_planks:3>],
			[<natura:nether_planks:3>, <ore:stickWood>.firstItem, <natura:nether_planks:3>]
		]
	],
	<natura:nether_doors> * 3 : [
		[
			[<natura:nether_planks>, <natura:nether_planks>],
			[<natura:nether_planks>, <natura:nether_planks>],
			[<natura:nether_planks>, <natura:nether_planks>]
		]
	],
	<natura:nether_doors:1> * 3 : [
		[
			[<natura:nether_planks:1>, <natura:nether_planks:1>],
			[<natura:nether_planks:1>, <natura:nether_planks:1>],
			[<natura:nether_planks:1>, <natura:nether_planks:1>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
	<natura:overworld_stairs_maple> * 4: [
		[
			[null, null, <natura:overworld_planks>],
			[null, <natura:overworld_planks>, <natura:overworld_planks>],
			[<natura:overworld_planks>, <natura:overworld_planks>, <natura:overworld_planks>]
		]
	],
	<natura:overworld_stairs_silverbell> * 4: [
		[
			[null, null, <natura:overworld_planks:1>],
			[null, <natura:overworld_planks:1>, <natura:overworld_planks:1>],
			[<natura:overworld_planks:1>, <natura:overworld_planks:1>, <natura:overworld_planks:1>]
		]
	],
	<natura:overworld_stairs_amaranth> * 4: [
		[
			[null, null, <natura:overworld_planks:2>],
			[null, <natura:overworld_planks:2>, <natura:overworld_planks:2>],
			[<natura:overworld_planks:2>, <natura:overworld_planks:2>, <natura:overworld_planks:2>]
		]
	],
	<natura:overworld_stairs_tiger> * 4: [
		[
			[null, null, <natura:overworld_planks:3>],
			[null, <natura:overworld_planks:3>, <natura:overworld_planks:3>],
			[<natura:overworld_planks:3>, <natura:overworld_planks:3>, <natura:overworld_planks:3>]
		]
	],
	<natura:overworld_stairs_willow> * 4: [
		[
			[null, null, <natura:overworld_planks:4>],
			[null, <natura:overworld_planks:4>, <natura:overworld_planks:4>],
			[<natura:overworld_planks:4>, <natura:overworld_planks:4>, <natura:overworld_planks:4>]
		]
	],
	<natura:overworld_stairs_eucalyptus> * 4: [
		[
			[null, null, <natura:overworld_planks:5>],
			[null, <natura:overworld_planks:5>, <natura:overworld_planks:5>],
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>, <natura:overworld_planks:5>]
		]
	],
	<natura:overworld_stairs_hopseed> * 4: [
		[
			[null, null, <natura:overworld_planks:6>],
			[null, <natura:overworld_planks:6>, <natura:overworld_planks:6>],
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>, <natura:overworld_planks:6>]
		]
	],
	<natura:overworld_stairs_sakura> * 4: [
		[
			[null, null, <natura:overworld_planks:7>],
			[null, <natura:overworld_planks:7>, <natura:overworld_planks:7>],
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>, <natura:overworld_planks:7>]
		]
	],
	<natura:overworld_stairs_redwood> * 4: [
		[
			[null, null, <natura:overworld_planks:8>],
			[null, <natura:overworld_planks:8>, <natura:overworld_planks:8>],
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>, <natura:overworld_planks:8>]
		]
	],
	<natura:nether_stairs_ghostwood> * 4: [
		[
			[null, null, <natura:nether_planks>],
			[null, <natura:nether_planks>, <natura:nether_planks>],
			[<natura:nether_planks>, <natura:nether_planks>, <natura:nether_planks>]
		]
	],
	<natura:nether_stairs_bloodwood> * 4: [
		[
			[null, null, <natura:nether_planks:1>],
			[null, <natura:nether_planks:1>, <natura:nether_planks:1>],
			[<natura:nether_planks:1>, <natura:nether_planks:1>, <natura:nether_planks:1>]
		]
	],
	<natura:nether_stairs_darkwood> * 4: [
		[
			[null, null, <natura:nether_planks:2>],
			[null, <natura:nether_planks:2>, <natura:nether_planks:2>],
			[<natura:nether_planks:2>, <natura:nether_planks:2>, <natura:nether_planks:2>]
		]
	],
	<natura:nether_stairs_fusewood> * 4: [
		[
			[null, null, <natura:nether_planks:3>],
			[null, <natura:nether_planks:3>, <natura:nether_planks:3>],
			[<natura:nether_planks:3>, <natura:nether_planks:3>, <natura:nether_planks:3>]
		]
	]
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
static removeRecipes as IIngredient[] = [
	<natura:nether_slab:1>,
	<natura:nether_slab:2>,
	<natura:nether_slab:3>,
	<natura:nether_slab>,
	<natura:overworld_slab2:1>,
	<natura:overworld_slab2:2>,
	<natura:overworld_slab2:3>,
	<natura:overworld_slab2>,
	<natura:overworld_slab:1>,
	<natura:overworld_slab:2>,
	<natura:overworld_slab:3>,
	<natura:overworld_slab:4>,
	<natura:overworld_slab>,
];

static removeRegex as string[] = [
	"natura:common/glass_bottle"
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.natura.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.natura.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.natura.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.natura.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.natura.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.natura.namedShapelessRecipes;

	var removeRegex as string[] = scripts.crafttweaker.recipes.mods.natura.removeRegex;
	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.natura.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);
}
