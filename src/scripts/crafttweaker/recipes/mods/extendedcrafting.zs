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
	<extendedcrafting:table_basic:0>: [
		[
			[<extendedcrafting:material:14>, <extendedcrafting:material:8>, <extendedcrafting:material:14>],
			[<minecraft:crafting_table:0>, metals.iron.block, <minecraft:crafting_table:0>],
			[<extendedcrafting:material:14>, <extendedcrafting:material:2>, <extendedcrafting:material:14>]
		]
	],
	<extendedcrafting:material:14> : [
		[
			[metals.iron.rod, metals.iron.rod],
			[<extendedcrafting:material:2>, <astralsorcery:itemcraftingcomponent:2>]
		]
	],
	<extendedcrafting:table_elite:0> : [
		[
			[<extendedcrafting:material:16>, <extendedcrafting:material:10>, <extendedcrafting:material:16>],
			[metals.manyullyn.block, <extendedcrafting:table_advanced:0>, metals.manyullyn.block],
			[<extendedcrafting:material:16>, <quark:biotite:0>, <extendedcrafting:material:16>]
		]
	],
	<extendedcrafting:material:16> : [
		[
			[<extendedcrafting:material:2>, <extendedcrafting:material:7>],
			[metals.manyullyn.ingot, metals.manyullyn.ingot]
		]
	],
	<extendedcrafting:material:10> : [
		[
			[null, <extendedcrafting:material:16>, null],
			[<extendedcrafting:material:16>, <extendedcrafting:material:0>, <extendedcrafting:material:16>],
			[null, <extendedcrafting:material:16>, null]
		]
	],
	<extendedcrafting:ender_crafter:0>: [
		[
			[<enderutilities:enderpart:1>, <enderutilities:enderpart:1>, <enderutilities:enderpart:1>],
			[<enderutilities:enderpart:0>, <astralsorcery:blockaltar:0>, <enderutilities:enderpart:0>],
			[<enderutilities:enderpart:0>, <enderutilities:enderpart:0>, <enderutilities:enderpart:0>]
		]
	],
	<extendedcrafting:ender_alternator:0>: [
		[
			[null, <minecraft:ender_eye:0>, null],
			[null, <enderutilities:enderpart:0>, null],
			[<enderutilities:enderpart:0>, <enderutilities:enderpart:0>, <enderutilities:enderpart:0>]
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
	<extendedcrafting:material:15> : [
		[metals.gold.rod, metals.gold.rod, metals.blackIron.plate, <extendedcrafting:material:7>]
	],
	<extendedcrafting:material:7>*2 : [
		[<minecraft:redstone:0>, <minecraft:glowstone_dust:0>, <minecraft:gunpowder:0>, <astralsorcery:itemcraftingcomponent:2>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
	<extendedcrafting:material:14>: {
		Utils.genRecipeName(stageThree, <extendedcrafting:material:14>): [
			[metals.iron.rod, metals.iron.rod, metals.blackIron.plate, <extendedcrafting:material:7>]
		]
	}
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<extendedcrafting:ender_alternator:0>,
	<extendedcrafting:ender_crafter:0>,
	<extendedcrafting:material:10>,
	<extendedcrafting:material:14>,
	<extendedcrafting:material:14>,
	<extendedcrafting:material:15>,
	<extendedcrafting:material:16>,
	<extendedcrafting:material:7>,
	<extendedcrafting:table_basic:0>,
	<extendedcrafting:table_elite:0>
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
