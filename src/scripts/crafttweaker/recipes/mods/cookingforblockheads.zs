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
	<cookingforblockheads:oven> : [
		[
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
			[metals.aluminum.plate, <natura:netherrack_furnace>, metals.aluminum.plate],
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate]
		]
	],
	<cookingforblockheads:sink> : [
		[
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate],
			[<minecraft:hardened_clay>, craftingUtils.getBucketIngredient(<liquid:water>), <minecraft:hardened_clay>],
			[<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]
		]
	],
	<cookingforblockheads:tool_rack> : [
		[
			[null, null, null],
			[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
			[metals.aluminum.rod, null, metals.aluminum.rod]
		]
	],
	<cookingforblockheads:toaster> : [
		[
			[null, null, <minecraft:stone_button>],
			[metals.aluminum.plate, <minecraft:iron_trapdoor>, metals.aluminum.plate],
			[metals.aluminum.plate, craftingUtils.getBucketIngredient(<liquid:lava>), metals.aluminum.plate]
		]
	],
	<cookingforblockheads:milk_jar>: [
		[
			[null, <ore:plankWood>, null],
			[<ore:blockGlass>, <buildcraftfactory:tank>, <ore:blockGlass>],
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
		]
	],
	<cookingforblockheads:kitchen_floor> * 12: [
		[
			[<minecraft:quartz_block>, <actuallyadditions:block_misc:2>],
			[<actuallyadditions:block_misc:2>, <minecraft:quartz_block>]
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
static removeRecipes as IIngredient[] = [
	<cookingforblockheads:kitchen_floor>,
	<cookingforblockheads:milk_jar>,
	<cookingforblockheads:oven>,
	<cookingforblockheads:recipe_book:2>,
	<cookingforblockheads:sink>,
	<cookingforblockheads:toaster>,
	<cookingforblockheads:tool_rack>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.cookingforblockheads.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.cookingforblockheads.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.cookingforblockheads.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.cookingforblockheads.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.cookingforblockheads.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.cookingforblockheads.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.cookingforblockheads.removeRecipes;

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
