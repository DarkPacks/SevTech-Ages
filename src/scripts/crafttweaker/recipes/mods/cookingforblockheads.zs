/*
    SevTech: Ages Cooking For Block Heads Recipe Script

    This script handles the recipes for Cooking For Block Heads.

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
	<cookingforblockheads:recipe_book:2> : [
		[
			[null, metals.platinum.plate, null],
			[<ore:workbench>, <cookingforblockheads:recipe_book:1>, <ore:workbench>],
			[null, metals.platinum.plate, null]
		]
	],
	<cookingforblockheads:oven:0> : [
		[
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
			[metals.aluminum.plate, <natura:netherrack_furnace:0>, metals.aluminum.plate],
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate]
		]
	],
	<cookingforblockheads:sink:0> : [
		[
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate],
			[<minecraft:hardened_clay:0>, craftingUtils.getBucketAndTankIngredient(<liquid:water>), <minecraft:hardened_clay:0>],
			[<minecraft:hardened_clay:0>, <minecraft:hardened_clay:0>, <minecraft:hardened_clay:0>]
		]
	],
	<cookingforblockheads:tool_rack:0> : [
		[
			[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
			[metals.aluminum.rod, null, metals.aluminum.rod]
		]
	],
	<cookingforblockheads:toaster:0> : [
		[
			[null, null, <minecraft:stone_button:0>],
			[metals.aluminum.plate, <minecraft:iron_trapdoor:0>, metals.aluminum.plate],
			[metals.aluminum.plate, craftingUtils.getBucketAndTankIngredient(<liquid:lava>), metals.aluminum.plate]
		]
	],
	<cookingforblockheads:milk_jar:0>: [
		[
			[null, <ore:plankWood>, null],
			[<ore:blockGlass>, <buildcraftfactory:tank:0>, <ore:blockGlass>],
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
		]
	],
	<cookingforblockheads:kitchen_floor:0> * 12: [
		[
			[<minecraft:quartz_block:0>, <actuallyadditions:block_misc:2>],
			[<actuallyadditions:block_misc:2>, <minecraft:quartz_block:0>]
		]
	],
	<cookingforblockheads:preservation_chamber:0> : [
		[
			[metals.electrum.nugget, metals.electrum.nugget, metals.electrum.nugget],
			[metals.electrum.ingot, <pneumaticcraft:heat_sink>, metals.electrum.ingot]
		]
	],
	<cookingforblockheads:heating_unit:0> : [
		[
			[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
			[metals.electrum.ingot, <storagedrawers:controller>, metals.electrum.ingot]
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
static shapelessRecipes as IIngredient[][][IItemStack] = {};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<cookingforblockheads:heating_unit:0>,
	<cookingforblockheads:ice_unit:0>,
	<cookingforblockheads:kitchen_floor:0>,
	<cookingforblockheads:milk_jar:0>,
	<cookingforblockheads:oven:0>,
	<cookingforblockheads:preservation_chamber:0>,
	<cookingforblockheads:recipe_book:2>,
	<cookingforblockheads:sink:0>,
	<cookingforblockheads:toaster:0>,
	<cookingforblockheads:tool_rack:0>
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
