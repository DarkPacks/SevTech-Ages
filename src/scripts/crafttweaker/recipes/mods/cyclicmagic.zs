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
	<cyclicmagic:block_fragile:0> : [
		[
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem],
			[null, <ore:stickWood>.firstItem, null],
			[<ore:stickWood>.firstItem, null, <ore:stickWood>.firstItem]
		]
	],
	<cyclicmagic:block_fragile_auto:0> : [
		[
			[<minecraft:dirt:*>, <cyclicmagic:block_fragile:0>]
		]
	],
	<cyclicmagic:tool_harvest_leaves:0> : [
		[
			[null, <minecraft:string:0>, <minecraft:stone_axe:0>],
			[null, <ore:stickWood>.firstItem, <minecraft:string:0>],
			[<ore:stickWood>.firstItem, null, null]
		]
	],
	<cyclicmagic:ender_torch:0> * 8 : [
		[
			[<ore:knightTorch>, <ore:knightTorch>, <ore:knightTorch>],
			[<ore:knightTorch>, <betterwithmods:material:12>, <ore:knightTorch>],
			[<ore:knightTorch>, <ore:knightTorch>, <ore:knightTorch>]
		]
	],
	<cyclicmagic:placer_block:0> : [
		[
			[<minecraft:stone:0>, <minecraft:dispenser:0>, <minecraft:stone:0>],
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate],
			[<minecraft:stone:0>, metals.platinum.plate, <minecraft:stone:0>]
		]
	],
	<cyclicmagic:clock:0> : [
		[
			[metals.aluminum.plate, metals.redstoneAlloy.plate, metals.aluminum.plate],
			[metals.redstoneAlloy.plate, <minecraft:quartz_block:0>, metals.redstoneAlloy.plate],
			[metals.aluminum.plate, metals.redstoneAlloy.plate, metals.aluminum.plate]
		]
	],
	<cyclicmagic:sprinkler:0> : [
		[
			[<minecraft:splash_potion:0>.withTag({Potion: "minecraft:strong_swiftness"}), <darkutils:grate:0>, <minecraft:splash_potion:0>.withTag({Potion: "minecraft:strong_regeneration"})],
			[metals.aluminum.plate, <immersiveengineering:metal_device1:6>,metals.aluminum.plate],
			[metals.lead.plate, metals.aluminum.plate, metals.lead.plate]
		]
	],
	<cyclicmagic:charm_fire:0>: [
		[
			[<minecraft:nether_wart:0>, null, <minecraft:blaze_rod:0>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:0>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart:0>]
		]
	],
	<cyclicmagic:charm_wing:0>: [
		[
			[<minecraft:nether_wart:0>, null, <minecraft:rabbit_foot:0>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart:0>]
		]
	],
	<cyclicmagic:tool_auto_torch:0>: [
		[
			[<ore:blockCoal>, <minecraft:iron_bars:0>, <ore:blockCoal>],
			[null, <stevescarts:cartmodule:44>, null],
			[<ore:blockCoal>, <minecraft:iron_bars:0>, <ore:blockCoal>]
		]
	],
	<cyclicmagic:charm_antidote:0>: [
		[
			[<minecraft:nether_wart:0>, null, <minecraft:fermented_spider_eye:0>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart:0>]
		]
	],
	<cyclicmagic:charm_water:0>: [
		[
			[<minecraft:nether_wart:0>, null, <minecraft:fish:1>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart:0>]
		]
	],
	<cyclicmagic:charm_void:0>: [
		[
			[<minecraft:nether_wart:0>, null, <minecraft:ender_eye:0>],
			[metals.iron.ingot, <astralsorcery:itemcraftingcomponent:4>, null],
			[metals.iron.ingot, metals.iron.ingot, <minecraft:nether_wart:0>]
		]
	],
	<cyclicmagic:harvester_block:0>: [
		[
			[<minecraft:emerald:0>, <mekanism:compressedobsidian:0>, <minecraft:emerald:0>],
			[metals.compressedIron.plate, <minecraft:diamond:0>, metals.compressedIron.plate],
			[<mekanism:compressedobsidian:0>, <mekanism:compressedobsidian:0>, <mekanism:compressedobsidian:0>]
		]
	],
	<cyclicmagic:block_forester:0>: [
		[
			[<mekanism:compressedobsidian:0>, <minecraft:daylight_detector:0>, <mekanism:compressedobsidian:0>],
			[metals.compressedIron.plate, <cyclicmagic:placer_block:0>, metals.compressedIron.plate],
			[<mekanism:compressedobsidian:0>, <mekanism:compressedobsidian:0>, <mekanism:compressedobsidian:0>]
		]
	],
	<cyclicmagic:sleeping_mat:0>: [
		[
			[<minecraft:leather:0>, <minecraft:leather:0>, <minecraft:leather:0>],
			[<primal:thin_slab_thatch:0>, <primal:thin_slab_thatch:0>, <primal:thin_slab_thatch:0>]
		]
	],
	<cyclicmagic:tool_launcher:0> : [
		[
			[<minecraft:glowstone_dust:0>, <ore:slimeball>, <minecraft:quartz:0>],
			[null, <minecraft:glowstone_dust:0>, <ore:slimeball>],
			[<ore:string>, null, <minecraft:glowstone_dust:0>]
		]
	],
	<cyclicmagic:entity_detector:0> : [
		[
			[<minecraft:quartz:0>, <ore:blockCoal>, <minecraft:quartz:0>],
			[null, <nex:amethyst_crystal:0>, null],
			[<minecraft:redstone:0>, null, <minecraft:redstone:0>]
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
static removeRecipes as IItemStack[] = [
	<cyclicmagic:block_forester:0>,
	<cyclicmagic:charm_antidote:0>,
	<cyclicmagic:charm_fire:0>,
	<cyclicmagic:charm_void:0>,
	<cyclicmagic:charm_water:0>,
	<cyclicmagic:charm_wing:0>,
	<cyclicmagic:clock:0>,
	<cyclicmagic:ender_torch:0>,
	<cyclicmagic:entity_detector:0>,
	<cyclicmagic:food_step:0>,
	<cyclicmagic:harvester_block:0>,
	<cyclicmagic:placer_block:0>,
	<cyclicmagic:sleeping_mat:0>,
	<cyclicmagic:sprinkler:0>,
	<cyclicmagic:tool_auto_torch:0>,
	<cyclicmagic:tool_launcher:0>
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
