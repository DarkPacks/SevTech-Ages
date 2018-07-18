/*
    SevTech: Ages Extended Crafting Recipe Script

    This script handles the recipes for Extended Crafting.

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
	<extendedcrafting:table_basic>: [
		[
			[<extendedcrafting:material:14>, <extendedcrafting:material:8>, <extendedcrafting:material:14>],
			[<minecraft:crafting_table>, metals.iron.block, <minecraft:crafting_table>],
			[<extendedcrafting:material:14>, <extendedcrafting:material:2>, <extendedcrafting:material:14>]
		]
	],
	<extendedcrafting:material:14> : [
		[
			[metals.iron.rod, metals.iron.rod],
			[<extendedcrafting:material:2>, <astralsorcery:itemcraftingcomponent:2>]
		]
	],
	<extendedcrafting:table_elite> : [
		[
			[<extendedcrafting:material:16>, <extendedcrafting:material:10>, <extendedcrafting:material:16>],
			[metals.manyullyn.block, <extendedcrafting:table_advanced>, metals.manyullyn.block],
			[<extendedcrafting:material:16>, <quark:biotite>, <extendedcrafting:material:16>]
		]
	],
	<extendedcrafting:material:16> : [
		[
			[<extendedcrafting:material:2>, <extendedcrafting:material:7>, null],
			[metals.manyullyn.ingot, metals.manyullyn.ingot, null],
			[null, null, null]
		]
	],
	<extendedcrafting:material:10> : [
		[
			[null, <extendedcrafting:material:16>, null],
			[<extendedcrafting:material:16>, <extendedcrafting:material>, <extendedcrafting:material:16>],
			[null, <extendedcrafting:material:16>, null]
		]
	],
	<extendedcrafting:ender_crafter>: [
		[
			[<enderutilities:enderpart:1>, <enderutilities:enderpart:1>, <enderutilities:enderpart:1>],
			[<enderutilities:enderpart>, <astralsorcery:blockaltar>, <enderutilities:enderpart>],
			[<enderutilities:enderpart>, <enderutilities:enderpart>, <enderutilities:enderpart>]
		]
	],
	<extendedcrafting:ender_alternator>: [
		[
			[null, <minecraft:ender_eye>, null],
			[null, <enderutilities:enderpart>, null],
			[<enderutilities:enderpart>, <enderutilities:enderpart>, <enderutilities:enderpart>]
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
	<extendedcrafting:material:14> : [
		[metals.iron.rod, metals.iron.rod, metals.blackIron.plate, <extendedcrafting:material:7>]
	],
	<extendedcrafting:material:15> : [
		[metals.gold.rod, metals.gold.rod, metals.blackIron.plate, <extendedcrafting:material:7>]
	],
	<extendedcrafting:material:7>*2 : [
		[<minecraft:redstone>, <minecraft:glowstone_dust>, <minecraft:gunpowder>, <astralsorcery:itemcraftingcomponent:2>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<extendedcrafting:ender_alternator>,
	<extendedcrafting:ender_crafter>,
	<extendedcrafting:material:10>,
	<extendedcrafting:material:14>,
	<extendedcrafting:material:14>,
	<extendedcrafting:material:15>,
	<extendedcrafting:material:16>,
	<extendedcrafting:material:7>,
	<extendedcrafting:table_basic>,
	<extendedcrafting:table_elite>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.extendedcrafting.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.extendedcrafting.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.extendedcrafting.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.extendedcrafting.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.extendedcrafting.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.extendedcrafting.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.extendedcrafting.removeRecipes;

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
