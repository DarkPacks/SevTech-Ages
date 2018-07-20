/*
    SevTech: Ages Cyclic Magic Recipe Script

    This script handles the recipes for Cyclic Magic.

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
	<cyclicmagic:block_fragile> : [
		[
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem],
			[null, <ore:stickWood>.firstItem, null],
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem]
		]
	],
	<cyclicmagic:block_fragile_auto> : [
		[
			[<minecraft:dirt:*>, <cyclicmagic:block_fragile>]
		]
	],
	<cyclicmagic:tool_harvest_leaves> : [
		[
			[null, <minecraft:string>, <minecraft:stone_axe>],
			[null, <ore:stickWood>.firstItem, <minecraft:string>],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<cyclicmagic:ender_torch> * 8 : [
		[
			[<ore:knightTorch>, <ore:knightTorch>, <ore:knightTorch>],
			[<ore:knightTorch>, <betterwithmods:material:12>, <ore:knightTorch>],
			[<ore:knightTorch>, <ore:knightTorch>, <ore:knightTorch>]
		]
	],
	<cyclicmagic:placer_block> : [
		[
			[<minecraft:stone>, <minecraft:dispenser>, <minecraft:stone>],
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate],
			[<minecraft:stone>, metals.platinum.plate, <minecraft:stone>]
		]
	],
	<cyclicmagic:clock> : [
		[
			[metals.aluminum.plate, metals.redstoneAlloy.plate, metals.aluminum.plate],
			[metals.redstoneAlloy.plate, <minecraft:quartz_block>, metals.redstoneAlloy.plate],
			[metals.aluminum.plate, metals.redstoneAlloy.plate, metals.aluminum.plate]
		]
	],
	<cyclicmagic:sprinkler> : [
		[
			[<minecraft:splash_potion>.withTag({Potion: "minecraft:strong_swiftness"}), <darkutils:grate>, <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_regeneration"})],
			[metals.aluminum.plate, <immersiveengineering:metal_device1:6>,metals.aluminum.plate],
			[metals.lead.plate, metals.aluminum.plate, metals.lead.plate]
		]
	],
	<cyclicmagic:charm_fire>: [
		[
			[<minecraft:nether_wart>, null, <minecraft:blaze_rod>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart>]
		]
	],
	<cyclicmagic:charm_wing>: [
		[
			[<minecraft:nether_wart>, null, <minecraft:rabbit_foot>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart>]
		]
	],
	<cyclicmagic:tool_auto_torch>: [
		[
			[<ore:blockCoal>, <minecraft:iron_bars>, <ore:blockCoal>],
			[null, <stevescarts:cartmodule:44>, null],
			[<ore:blockCoal>, <minecraft:iron_bars>, <ore:blockCoal>]
		]
	],
	<cyclicmagic:charm_antidote>: [
		[
			[<minecraft:nether_wart>, null, <minecraft:fermented_spider_eye>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart>]
		]
	],
	<cyclicmagic:charm_water>: [
		[
			[<minecraft:nether_wart>, null, <minecraft:fish:1>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart>]
		]
	],
	<cyclicmagic:charm_void>: [
		[
			[<minecraft:nether_wart>, null, <minecraft:ender_eye>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart>]
		]
	],
	<cyclicmagic:harvester_block>: [
		[
			[<minecraft:emerald>, <mekanism:compressedobsidian>, <minecraft:emerald>],
			[metals.compressedIron.plate, <minecraft:diamond>, metals.compressedIron.plate],
			[<mekanism:compressedobsidian>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>]
		]
	],
	<cyclicmagic:block_forester>: [
		[
			[<mekanism:compressedobsidian>, <minecraft:daylight_detector>, <mekanism:compressedobsidian>],
			[metals.compressedIron.plate, <cyclicmagic:placer_block>, metals.compressedIron.plate],
			[<mekanism:compressedobsidian>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>]
		]
	],
	<cyclicmagic:sleeping_mat>: [
		[
			[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
			[<primal:thin_slab_thatch>, <primal:thin_slab_thatch>, <primal:thin_slab_thatch>]
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
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<cyclicmagic:block_forester>,
	<cyclicmagic:charm_antidote>,
	<cyclicmagic:charm_fire>,
	<cyclicmagic:charm_void>,
	<cyclicmagic:charm_water>,
	<cyclicmagic:charm_wing>,
	<cyclicmagic:clock>,
	<cyclicmagic:ender_torch>,
	<cyclicmagic:food_step>,
	<cyclicmagic:harvester_block>,
	<cyclicmagic:placer_block>,
	<cyclicmagic:sleeping_mat>,
	<cyclicmagic:sprinkler>,
	<cyclicmagic:tool_auto_torch>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.cyclicmagic.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.cyclicmagic.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.cyclicmagic.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.cyclicmagic.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.cyclicmagic.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.cyclicmagic.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.cyclicmagic.removeRecipes;

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
